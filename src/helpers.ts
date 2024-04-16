// For each division by 10, add one to exponent to truncate one significant figure
import {
  Address,
  BigDecimal,
  BigInt,
  Bytes,
  ethereum,
  log,
} from '@graphprotocol/graph-ts'
import {
  AccountCToken,
  Account,
  AccountCTokenTransaction,
  Comptroller,
  Market,
  MarketDailySnapshot,
  AccountCTokenDailySnapshot,
  AccountDailySnapshot,
  StakingDailySnapshot,
} from '../generated/schema'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'
import config from '../config/config'
import { CToken } from '../generated/templates/CToken/CToken'

export const BIGINT_ZERO = BigInt.fromI32(0)

export namespace ProposalState {
  export const CREATED = 'CREATED'
  export const CANCELED = 'CANCELED'
  export const EXECUTED = 'EXECUTED'
  export const QUEUED = 'QUEUED'
}

export namespace GovernanceVoteValue {
  export const VOTE_VALUE_YES = 0
  export const VOTE_VALUE_NO = 1
  export const VOTE_VALUE_ABSTAIN = 2
}

export let ProtocolTokenRewardType = 0
export let NativeTokenRewardType = 1
export let mantissaFactor = 18
export let cTokenDecimals = 8
export let mantissaFactorBD: BigDecimal = exponentToBigDecimal(18)
export let cTokenDecimalsBD: BigDecimal = exponentToBigDecimal(8)
export let zeroBD = BigDecimal.zero()
export let zeroBI = BigInt.zero()
export let secondsPerDay = 24 * 60 * 60
export let daysPerYear = 365
export const ADDRESS_ZERO = '0x0000000000000000000000000000000000000000'
export const zeroAddress = ADDRESS_ZERO

export function intToBigDecimal(a: i32): BigDecimal {
  return new BigDecimal(BigInt.fromI32(a))
}

export function exponentToBigDecimal(decimals: i32): BigDecimal {
  let ten = BigInt.fromI32(10)
  let res = BigInt.fromI32(1)
  for (let i = 0; i < decimals; i++) {
    res = res.times(ten)
  }
  return res.toBigDecimal()
}

export function convertSecondRateMantissaToAPY(rateMantissa: BigInt): BigDecimal {
  return BigDecimal.fromString(
    (
      100.0 *
      (Math.pow(1.0 + (f64(rateMantissa.toI64()) * secondsPerDay) / 1e18, daysPerYear) -
        1)
    ).toString(),
  )
}

function getEpochDays(blockTimestamp: i32): i32 {
  return blockTimestamp / secondsPerDay
}

export function getOrCreateComptroller(): Comptroller {
  let comptroller = Comptroller.load('1')
  if (!comptroller) {
    comptroller = new Comptroller('1')
    comptroller._markets = []
    let contract = ComptrollerContract.bind(Address.fromString(config.comptrollerAddr))

    let oracleResult = contract.try_oracle()
    if (oracleResult.reverted) {
      log.warning('[getOrCreateComptroller] try_oracle reverted', [])
      comptroller.priceOracle = '0x0000000000000000000000000000000000000000'
    } else {
      comptroller.priceOracle = oracleResult.value.toHexString()
    }

    let liquidationIncentiveMantissaResult = contract.try_liquidationIncentiveMantissa()
    if (liquidationIncentiveMantissaResult.reverted) {
      log.warning(
        '[getOrCreateComptroller] try_liquidationIncentiveMantissa reverted',
        [],
      )
      comptroller.liquidationIncentive = zeroBD
    } else {
      comptroller.liquidationIncentive = liquidationIncentiveMantissaResult.value
        .toBigDecimal()
        .div(mantissaFactorBD)
    }

    let closeFactorMantissaResult = contract.try_closeFactorMantissa()
    if (closeFactorMantissaResult.reverted) {
      log.warning('[getOrCreateComptroller] try_closeFactorMantissa reverted', [])
      comptroller.closeFactor = zeroBD
    } else {
      comptroller.closeFactor = closeFactorMantissaResult.value
        .toBigDecimal()
        .div(mantissaFactorBD)
    }
  }
  return comptroller
}

export function getOrCreateStakingDailySnapshot(
  blockTimestamp: i32,
): StakingDailySnapshot {
  let snapshotID = config.safetyModuleAddr
    .toLowerCase()
    .concat('-')
    .concat(getEpochDays(blockTimestamp).toString()
  )
  log.info('[getorCreateStakingDailySnapshot] snapshotID: {}', [snapshotID])
  let snapshot = StakingDailySnapshot.load(snapshotID)
  if (!snapshot) {
    log.warning('[getorCreateStakingDailySnapshot] snapshot not found, creating new snapshot {}', [snapshotID])
    snapshot = new StakingDailySnapshot(snapshotID)
    snapshot.stakedToken = config.safetyModuleAddr.toLowerCase()
    snapshot.totalStaked = zeroBD
    snapshot.totalStakedUSD = zeroBD
    snapshot.save()
  }
  return snapshot
}

export function getOrCreateAccountDailySnapshot(
  accountID: string,
  blockTimestamp: i32,
): AccountDailySnapshot {
  let snapshotID = accountID
    .toLowerCase()
    .concat('-')
    .concat(getEpochDays(blockTimestamp).toString()
  )
  log.info('[getOrCreateAccountDailySnapshot] snapshotID: {}', [snapshotID])
  let snapshot = AccountDailySnapshot.load(snapshotID)
  if (!snapshot) {
    log.info('[getOrCreateAccountDailySnapshot] snapshot not found, creating new snapshot {}', [snapshotID])
    snapshot = new AccountDailySnapshot(snapshotID)
    snapshot.account = accountID.toLowerCase()
    snapshot.totalSuppliesUSD = zeroBD
    snapshot.totalBorrowsUSD = zeroBD
    snapshot.collateralValueUSD = zeroBD
    snapshot.save()
  }
  return snapshot
}

export function getOrCreateMarketDailySnapshot(
  marketID: string,
  blockTimestamp: i32,
  blockNumber: i32,
): MarketDailySnapshot {
  let snapshotID = marketID.concat('-').concat(getEpochDays(blockTimestamp).toString())
  log.info('[getorCreateMarketDailySnapshot] snapshotID: {}', [snapshotID])
  let snapshot = MarketDailySnapshot.load(snapshotID)
  if (!snapshot) {
    log.warning('[getorCreateMarketDailySnapshot] snapshot not found, creating new snapshot {}', [snapshotID])
    snapshot = new MarketDailySnapshot(snapshotID)
    snapshot.market = marketID
    snapshot.totalBorrows = zeroBD
    snapshot.totalSupplies = zeroBD
    snapshot.totalBorrowsUSD = zeroBD
    snapshot.totalSuppliesUSD = zeroBD
    snapshot.save()
  }

  // Load the market entity
  let market = Market.load(marketID)

  // Iterate over the accountCToken IDs and create a snapshot for each one
  if (market) {

    let accounts = market.accountCTokens.load();

    for (let i = 0; i < accounts.length; i++) {
      let accountCToken = accounts[i]

      // Check if the last digit of the account id (converted from hex) matches the blockTimestamp mod 16
      let lastDigit = parseInt(accountCToken.account.slice(-1), 16);
      // Create new AccountCTokenDailySnapshot only for 1/16th of accounts w/ modulo operation
      if ((accountCToken) && (lastDigit === blockNumber % 16)) {
        let id = accountCToken.account
          .concat('-')
          .concat(market.id)
          .concat('-')
          .concat(getEpochDays(blockTimestamp).toString())
        let accountSnapshot = AccountCTokenDailySnapshot.load(id)
        if (!accountSnapshot) {
          let accountSnapshot = new AccountCTokenDailySnapshot(id)
          accountSnapshot.account = accountCToken.account
          accountSnapshot.market = marketID

          // Compute snapshot fields
          // This call should return the current/up to date borrow balance of the account
          let contract = CToken.bind(Address.fromString(market.id))
          let borrowBalanceResult = contract.try_borrowBalanceCurrent(Address.fromString(accountCToken.account))
          if (borrowBalanceResult.reverted) {
            log.warning('[getOrCreateMarketDailySnapshot] try_borrowBalanceCurrent reverted; market: {} account: {}', [
              market.id,
              accountCToken.account,
            ])
            accountSnapshot.totalBorrows = zeroBD
          } else {
            accountSnapshot.totalBorrows = borrowBalanceResult.value.toBigDecimal().div(
              exponentToBigDecimal(market.underlyingDecimals))
          }
          accountSnapshot.totalSupplies = accountCToken.cTokenBalance
            .times(market.exchangeRate)
          accountSnapshot.totalBorrowsUSD = accountSnapshot.totalBorrows
            .times(market.underlyingPriceUSD)
          accountSnapshot.totalSuppliesUSD = accountCToken.cTokenBalance
            .times(market.exchangeRate)
            .times(market.underlyingPriceUSD)
          accountSnapshot.collateralFactor = market.collateralFactor
          if (accountSnapshot.totalSupplies.gt(zeroBD)) {
            accountSnapshot.collateralValueUSD =
              accountSnapshot.totalSuppliesUSD
                .times(market.collateralFactor)
          } else {
            accountSnapshot.collateralValueUSD = zeroBD
          }

          // Save the AccountCTokenDailySnapshot
          accountSnapshot.save()

          // Update the AccountDailySnapshot
          let accountDailySnapshot = getOrCreateAccountDailySnapshot(
            accountCToken.account,
            blockTimestamp,
          )
          accountDailySnapshot.totalSuppliesUSD = accountDailySnapshot.totalSuppliesUSD.plus(
            accountSnapshot.totalSuppliesUSD,
          )
          accountDailySnapshot.totalBorrowsUSD = accountDailySnapshot.totalBorrowsUSD.plus(
            accountSnapshot.totalBorrowsUSD,
          )
          accountDailySnapshot.collateralValueUSD = accountDailySnapshot.collateralValueUSD.plus(
            accountSnapshot.collateralValueUSD,
          )
          accountDailySnapshot.save()
        }
      }
    }
  }
  return snapshot
}

export function addrEq(a: string, b: string): boolean {
  return a.toLowerCase() == b.toLowerCase()
}

export function createAccountCToken(
  cTokenStatsID: string,
  symbol: string,
  account: string,
  marketID: string,
): AccountCToken {
  let cTokenStats = new AccountCToken(cTokenStatsID)
  cTokenStats.symbol = symbol
  cTokenStats.market = marketID
  cTokenStats.account = account
  cTokenStats.accrualBlockNumber = BigInt.fromI32(0)
  cTokenStats.cTokenBalance = zeroBD
  cTokenStats.totalUnderlyingSupplied = zeroBD
  cTokenStats.totalUnderlyingRedeemed = zeroBD
  cTokenStats.accountBorrowIndex = zeroBI
  cTokenStats.totalUnderlyingBorrowed = zeroBD
  cTokenStats.totalUnderlyingRepaid = zeroBD
  cTokenStats.storedBorrowBalance = zeroBD
  cTokenStats.enteredMarket = false
  return cTokenStats
}

export function createAccount(accountID: string): Account {
  let account = new Account(accountID)
  account.countLiquidated = 0
  account.countLiquidator = 0
  account.hasBorrowed = false
  account.save()
  return account
}

export function updateCommonCTokenStats(
  marketID: string,
  marketSymbol: string,
  accountID: string,
  tx_hash: Bytes,
  timestamp: BigInt,
  blockNumber: BigInt,
  logIndex: BigInt,
): AccountCToken {
  let cTokenStatsID = marketID.concat('-').concat(accountID)
  let cTokenStats = AccountCToken.load(cTokenStatsID)
  if (cTokenStats == null) {
    cTokenStats = createAccountCToken(cTokenStatsID, marketSymbol, accountID, marketID)
  }
  getOrCreateAccountCTokenTransaction(
    cTokenStatsID,
    tx_hash,
    timestamp,
    blockNumber,
    logIndex,
  )
  cTokenStats.accrualBlockNumber = blockNumber
  return cTokenStats
}

export function getOrCreateAccountCTokenTransaction(
  accountID: string,
  tx_hash: Bytes,
  timestamp: BigInt,
  block: BigInt,
  logIndex: BigInt,
): AccountCTokenTransaction {
  let id = accountID
    .concat('-')
    .concat(tx_hash.toHexString())
    .concat('-')
    .concat(logIndex.toString())
  let transaction = AccountCTokenTransaction.load(id)

  if (transaction == null) {
    transaction = new AccountCTokenTransaction(id)
    transaction.account = accountID
    transaction.tx_hash = tx_hash.toHexString()
    transaction.timestamp = timestamp
    transaction.block = block
    transaction.logIndex = logIndex
    transaction.save()
  }

  return transaction
}

export function getOrElse<T>(result: ethereum.CallResult<T>, defaultValue: T): T {
  if (result.reverted) {
    return defaultValue
  }
  return result.value
}
