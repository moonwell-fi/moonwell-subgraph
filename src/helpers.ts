// For each division by 10, add one to exponent to truncate one significant figure
import { Address, BigDecimal, BigInt, Bytes, log } from '@graphprotocol/graph-ts'
import {
  AccountCToken,
  Account,
  AccountCTokenTransaction,
  Comptroller,
  UsageDailySnapshot,
} from '../generated/schema'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'

export let comptrollerAddr = Address.fromString(
  '0x0b7a0EAA884849c6Af7a129e899536dDDcA4905E',
)
export let ProtocolTokenRewardType = 0
export let NativeTokenRewardType = 1
export let mantissaFactor = 18
export let cTokenDecimals = 8
export let mantissaFactorBD: BigDecimal = exponentToBigDecimal(18)
export let cTokenDecimalsBD: BigDecimal = exponentToBigDecimal(8)
export let zeroBD = BigDecimal.zero()
export let zeroBI = BigInt.zero()
let secondsPerDay = 24 * 60 * 60
export let daysPerYear = 365 as u8
let mantissaFactorBI = BigInt.fromI32(10).pow(18)

export function intToBigDecimal(a: i32): BigDecimal {
  return new BigDecimal(BigInt.fromI32(a))
}

export function exponentToBigDecimal(decimals: i32): BigDecimal {
  let bd = BigDecimal.fromString('1')
  for (let i = 0; i < decimals; i++) {
    bd = bd.times(BigDecimal.fromString('10'))
  }
  return bd
}

// 100 * [-1 + (1 + second_rate / 10^18 * 86400) ^ 365]
// where (1 + second_rate / 10^18 * 86400) ^ 365
//     = (10^18 + second_rate * 86400)^365 / (10^18)^365
export function convertSecondRateMantissaToAPY(rateMantissa: BigInt): BigDecimal {
  let a = rateMantissa
    .times(BigInt.fromI32(secondsPerDay))
    .plus(mantissaFactorBI)
    .pow(daysPerYear)
  let b = mantissaFactorBI.pow(daysPerYear)
  return new BigDecimal(BigInt.fromI32(100)).times(
    a
      .toBigDecimal()
      .div(b.toBigDecimal())
      .minus(new BigDecimal(BigInt.fromI32(1))),
  )
}

function getEpochDays(blockTimestamp: i32): i32 {
  return blockTimestamp / secondsPerDay
}

export function getOrCreateComptroller(): Comptroller {
  let comptroller = Comptroller.load('1')
  if (!comptroller) {
    comptroller = new Comptroller('1')
    let contract = ComptrollerContract.bind(comptrollerAddr)

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

export function getOrCreateUsageDailySnapshot(blockTimestamp: i32): UsageDailySnapshot {
  let snapshotID = getEpochDays(blockTimestamp).toString()
  let snapshot = UsageDailySnapshot.load(snapshotID)
  if (!snapshot) {
    snapshot = new UsageDailySnapshot(snapshotID)
    snapshot.borrowCount = 0
    snapshot.supplyCount = 0
    snapshot.borrowAmount = zeroBD
    snapshot.supplyAmount = zeroBD
    snapshot.borrowAmountUSD = zeroBD
    snapshot.supplyAmountUSD = zeroBD
    snapshot.save()
  }
  return snapshot
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
