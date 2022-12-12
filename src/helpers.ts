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
  MarketDailySnapshot,
  Account2,
  MarketAccount2,
} from '../generated/schema'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'
import config from '../config/config'

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

export function getOrCreateMarketDailySnapshot(
  marketID: string,
  blockTimestamp: i32,
): MarketDailySnapshot {
  let snapshotID = marketID.concat('-').concat(getEpochDays(blockTimestamp).toString())
  let snapshot = MarketDailySnapshot.load(snapshotID)
  if (!snapshot) {
    snapshot = new MarketDailySnapshot(snapshotID)
    snapshot.market = marketID
    snapshot.totalBorrows = zeroBD
    snapshot.totalSupplies = zeroBD
    snapshot.totalBorrowsUSD = zeroBD
    snapshot.totalSuppliesUSD = zeroBD
    snapshot.save()
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

export function getOrCreateAccount2(accountID: string): Account2 {
  let account = Account2.load(accountID)
  if (!account) {
    account = new Account2(accountID)
    account.accountLiquidity = zeroBI
    account.accountShortfall = zeroBI
    account.rewardAccruedNative = zeroBI
    account.rewardAccruedProtocol = zeroBI
    account.govTokenBalance = zeroBI
    account.govTokenAllowance = zeroBI
    account.safetyModuleTokenBalance = zeroBI
    account.stakersCooldown = zeroBI
    account.userStakingIndex = zeroBI
    account.stakerRewardsToClaim = zeroBI
    account.save()
  }
  return account;
}

export function getOrCreateMarketAccount2(
  marketID: string,
  accountID: string,
): MarketAccount2 {
  getOrCreateAccount2(accountID);
  let id = marketID.concat('-').concat(accountID)
  let marketAccount = MarketAccount2.load(id)
  if (!marketAccount) {
    marketAccount = new MarketAccount2(id)
    marketAccount.market = marketID
    marketAccount.account = accountID
    marketAccount.tokenBalance = zeroBI
    marketAccount.tokenAllowance = zeroBI
    marketAccount.mTokenBalance = zeroBI
    marketAccount.borrowBalanceStored = zeroBI
    marketAccount.rewardBorrowerIndexNative = zeroBI
    marketAccount.rewardBorrowerIndexProtocol = zeroBI
    marketAccount.rewardSupplierIndexNative = zeroBI
    marketAccount.rewardSupplierIndexProtocol = zeroBI
    marketAccount.save()
  }
  return marketAccount
}

export function getOrElse<T>(result: ethereum.CallResult<T>, defaultValue: T): T {
  if (result.reverted) {
    return defaultValue
  }
  return result.value
}
