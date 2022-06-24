import { Address, log } from '@graphprotocol/graph-ts'
import {
  Mint,
  Redeem,
  Borrow,
  RepayBorrow,
  LiquidateBorrow,
  Transfer,
  AccrueInterest,
  NewReserveFactor,
  NewMarketInterestRateModel,
  CToken,
} from '../generated/templates/CToken/CToken'
import {
  Market,
  Account,
  MintEvent,
  RedeemEvent,
  LiquidationEvent,
  TransferEvent,
  BorrowEvent,
  RepayEvent,
  MarketAccount2,
  Account2,
} from '../generated/schema'
import { GovToken } from '../generated/templates/CToken/GovToken'
import { comptrollerAddr, govTokenAddr, safetyModuleAddr } from '../src/constants'

import { snapshotMarket, updateMarket } from './markets'
import {
  createAccount,
  updateCommonCTokenStats,
  exponentToBigDecimal,
  cTokenDecimalsBD,
  cTokenDecimals,
  ProtocolTokenRewardType,
  NativeTokenRewardType,
} from './helpers'
import { Comptroller } from '../generated/Comptroller/Comptroller'
import { ERC20 } from '../generated/templates/CToken/ERC20'

/* Account supplies assets into market and receives cTokens in exchange
 *
 * event.mintAmount is the underlying asset
 * event.mintTokens is the amount of cTokens minted
 * event.minter is the account
 *
 * Notes
 *    Transfer event will always get emitted with this
 *    Mints originate from the cToken address, not 0x000000, which is typical of ERC-20s
 *    No need to updateMarket(), handleAccrueInterest() ALWAYS runs before this
 *    No need to updateCommonCTokenStats, handleTransfer() will
 *    No need to update cTokenBalance, handleTransfer() will
 */
export function handleMint(event: Mint): void {
  let marketID = event.address.toHexString()
  let market = Market.load(marketID)!
  let mintID = event.transaction.hash
    .toHexString()
    .concat('-')
    .concat(event.transactionLogIndex.toString())

  let cTokenAmount = event.params.mintTokens
    .toBigDecimal()
    .div(cTokenDecimalsBD)
    .truncate(cTokenDecimals)
  let underlyingAmount = event.params.mintAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  let mint = new MintEvent(mintID)
  mint.amount = cTokenAmount
  mint.to = event.params.minter.toHexString()
  mint.from = marketID
  mint.blockNumber = event.block.number.toI32()
  mint.blockTime = event.block.timestamp.toI32()
  mint.cTokenSymbol = market.symbol
  mint.underlyingAmount = underlyingAmount
  mint.save()

  updateMarketAccount2(marketID, event.params.minter.toHexString())
}

/*  Account supplies cTokens into market and receives underlying asset in exchange
 *
 *  event.redeemAmount is the underlying asset
 *  event.redeemTokens is the cTokens
 *  event.redeemer is the account
 *
 *  Notes
 *    Transfer event will always get emitted with this
 *    No need to updateMarket(), handleAccrueInterest() ALWAYS runs before this
 *    No need to updateCommonCTokenStats, handleTransfer() will
 *    No need to update cTokenBalance, handleTransfer() will
 */
export function handleRedeem(event: Redeem): void {
  let marketID = event.address.toHexString()
  let market = Market.load(marketID)!
  let redeemID = event.transaction.hash
    .toHexString()
    .concat('-')
    .concat(event.transactionLogIndex.toString())

  let cTokenAmount = event.params.redeemTokens
    .toBigDecimal()
    .div(cTokenDecimalsBD)
    .truncate(cTokenDecimals)
  let underlyingAmount = event.params.redeemAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  let redeem = new RedeemEvent(redeemID)
  redeem.amount = cTokenAmount
  redeem.to = event.address.toHexString()
  redeem.from = event.params.redeemer.toHexString()
  redeem.blockNumber = event.block.number.toI32()
  redeem.blockTime = event.block.timestamp.toI32()
  redeem.cTokenSymbol = market.symbol
  redeem.underlyingAmount = underlyingAmount
  redeem.save()

  updateMarketAccount2(marketID, event.params.redeemer.toHexString())
}

/* Borrow assets from the protocol. All values either ETH or ERC20
 *
 * event.params.totalBorrows = of the whole market (not used right now)
 * event.params.accountBorrows = total of the account
 * event.params.borrowAmount = that was added in this event
 * event.params.borrower = the account
 * Notes
 *    No need to updateMarket(), handleAccrueInterest() ALWAYS runs before this
 */
export function handleBorrow(event: Borrow): void {
  let marketID = event.address.toHexString()
  let market = Market.load(marketID)!
  let accountID = event.params.borrower.toHex()
  let account = Account.load(accountID)
  if (account == null) {
    account = createAccount(accountID)
  }
  account.hasBorrowed = true
  account.save()

  // Update cTokenStats common for all events, and return the stats to update unique
  // values for each event
  let cTokenStats = updateCommonCTokenStats(
    market.id,
    market.symbol,
    accountID,
    event.transaction.hash,
    event.block.timestamp,
    event.block.number,
    event.logIndex,
  )

  let borrowAmountBD = event.params.borrowAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))

  cTokenStats.storedBorrowBalance = event.params.accountBorrows
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  cTokenStats.accountBorrowIndex = market.borrowIndex
  cTokenStats.totalUnderlyingBorrowed =
    cTokenStats.totalUnderlyingBorrowed.plus(borrowAmountBD)
  cTokenStats.save()

  let borrowID = event.transaction.hash
    .toHexString()
    .concat('-')
    .concat(event.transactionLogIndex.toString())

  let borrowAmount = event.params.borrowAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  let accountBorrows = event.params.accountBorrows
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  let borrow = new BorrowEvent(borrowID)
  borrow.amount = borrowAmount
  borrow.accountBorrows = accountBorrows
  borrow.borrower = event.params.borrower.toHexString()
  borrow.blockNumber = event.block.number.toI32()
  borrow.blockTime = event.block.timestamp.toI32()
  borrow.underlyingSymbol = market.underlyingSymbol
  borrow.save()

  let marketAccountID = marketID.concat('-').concat(accountID)
  let marketAccount2 = MarketAccount2.load(marketAccountID)
  if (!marketAccount2) {
    log.warning('[handleBorrow] market account2 {} not found', [marketAccountID])
    return
  }
  marketAccount2.borrowBalanceStored = event.params.accountBorrows
  marketAccount2.save()

  updateMarketAccount2(marketID, event.params.borrower.toHexString())
}

/* Repay some amount borrowed. Anyone can repay anyones balance
 *
 * event.params.totalBorrows = of the whole market (not used right now)
 * event.params.accountBorrows = total of the account (not used right now)
 * event.params.repayAmount = that was added in this event
 * event.params.borrower = the borrower
 * event.params.payer = the payer
 *
 * Notes
 *    No need to updateMarket(), handleAccrueInterest() ALWAYS runs before this
 *    Once a account totally repays a borrow, it still has its account interest index set to the
 *    markets value. We keep this, even though you might think it would reset to 0 upon full
 *    repay.
 */
export function handleRepayBorrow(event: RepayBorrow): void {
  let marketID = event.address.toHexString()
  let market = Market.load(marketID)!
  let accountID = event.params.borrower.toHex()
  let account = Account.load(accountID)
  if (account == null) {
    createAccount(accountID)
  }

  // Update cTokenStats common for all events, and return the stats to update unique
  // values for each event
  let cTokenStats = updateCommonCTokenStats(
    market.id,
    market.symbol,
    accountID,
    event.transaction.hash,
    event.block.timestamp,
    event.block.number,
    event.logIndex,
  )

  let repayAmountBD = event.params.repayAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))

  cTokenStats.storedBorrowBalance = event.params.accountBorrows
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  cTokenStats.accountBorrowIndex = market.borrowIndex
  cTokenStats.totalUnderlyingRepaid =
    cTokenStats.totalUnderlyingRepaid.plus(repayAmountBD)
  cTokenStats.save()

  let repayID = event.transaction.hash
    .toHexString()
    .concat('-')
    .concat(event.transactionLogIndex.toString())

  let repayAmount = event.params.repayAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  let accountBorrows = event.params.accountBorrows
    .toBigDecimal()
    .div(exponentToBigDecimal(market.underlyingDecimals))
    .truncate(market.underlyingDecimals)

  let repay = new RepayEvent(repayID)
  repay.amount = repayAmount
  repay.accountBorrows = accountBorrows
  repay.borrower = event.params.borrower.toHexString()
  repay.blockNumber = event.block.number.toI32()
  repay.blockTime = event.block.timestamp.toI32()
  repay.underlyingSymbol = market.underlyingSymbol
  repay.payer = event.params.payer.toHexString()
  repay.save()

  updateMarketAccount2(marketID, event.params.payer.toHexString())
}

/*
 * Liquidate an account who has fell below the collateral factor.
 *
 * event.params.borrower - the borrower who is getting liquidated of their cTokens
 * event.params.mTokenCollateral - the market ADDRESS of the ctoken being liquidated
 * event.params.liquidator - the liquidator
 * event.params.repayAmount - the amount of underlying to be repaid
 * event.params.seizeTokens - cTokens seized (transfer event should handle this)
 *
 * Notes
 *    No need to updateMarket(), handleAccrueInterest() ALWAYS runs before this.
 *    When calling this function, event RepayBorrow, and event Transfer will be called every
 *    time. This means we can ignore repayAmount. Seize tokens only changes state
 *    of the cTokens, which is covered by transfer. Therefore we only
 *    add liquidation counts in this handler.
 */
export function handleLiquidateBorrow(event: LiquidateBorrow): void {
  let liquidatorID = event.params.liquidator.toHex()
  let liquidator = Account.load(liquidatorID)
  if (liquidator == null) {
    liquidator = createAccount(liquidatorID)
  }
  liquidator.countLiquidator = liquidator.countLiquidator + 1
  liquidator.save()

  let borrowerID = event.params.borrower.toHex()
  let borrower = Account.load(borrowerID)
  if (borrower == null) {
    borrower = createAccount(borrowerID)
  }
  borrower.countLiquidated = borrower.countLiquidated + 1
  borrower.save()

  // For a liquidation, the liquidator pays down the borrow of the underlying
  // asset. They seize one of potentially many types of cToken collateral of
  // the underwater borrower. So we must get that address from the event, and
  // the repay token is the event.address
  let marketID = event.address.toHexString()
  let marketRepayToken = Market.load(marketID)!
  let marketCTokenLiquidated = Market.load(event.params.mTokenCollateral.toHexString())!
  let mintID = event.transaction.hash
    .toHexString()
    .concat('-')
    .concat(event.transactionLogIndex.toString())

  let cTokenAmount = event.params.seizeTokens
    .toBigDecimal()
    .div(cTokenDecimalsBD)
    .truncate(cTokenDecimals)
  let underlyingRepayAmount = event.params.repayAmount
    .toBigDecimal()
    .div(exponentToBigDecimal(marketRepayToken.underlyingDecimals))
    .truncate(marketRepayToken.underlyingDecimals)

  let liquidation = new LiquidationEvent(mintID)
  liquidation.amount = cTokenAmount
  liquidation.to = event.params.liquidator.toHexString()
  liquidation.from = event.params.borrower.toHexString()
  liquidation.blockNumber = event.block.number.toI32()
  liquidation.blockTime = event.block.timestamp.toI32()
  liquidation.underlyingSymbol = marketRepayToken.underlyingSymbol
  liquidation.underlyingRepayAmount = underlyingRepayAmount
  liquidation.cTokenSymbol = marketCTokenLiquidated.symbol
  liquidation.save()

  updateMarketAccount2(marketID, event.params.liquidator.toHexString())
}

/* Transferring of cTokens
 *
 * event.params.from = sender of cTokens
 * event.params.to = receiver of cTokens
 * event.params.amount = amount sent
 *
 * Notes
 *    Possible ways to emit Transfer:
 *      seize() - i.e. a Liquidation Transfer (does not emit anything else)
 *      redeemFresh() - i.e. redeeming your cTokens for underlying asset
 *      mintFresh() - i.e. you are lending underlying assets to create ctokens
 *      transfer() - i.e. a basic transfer
 *    This function handles all 4 cases. Transfer is emitted alongside the mint, redeem, and seize
 *    events. So for those events, we do not update cToken balances.
 */
export function handleTransfer(event: Transfer): void {
  // We only updateMarket() if accrual block number is not up to date. This will only happen
  // with normal transfers, since mint, redeem, and seize transfers will already run updateMarket()
  let marketID = event.address.toHexString()
  let market = Market.load(marketID)!
  /*
  if (market.accrualBlockNumber != event.block.number.toI32()) {
    updateMarket(
      event.address,
      event.block.number.toI32(),
      event.block.timestamp.toI32(),
    )
  }
*/
  let cTokenContract = CToken.bind(event.address)
  // check to
  let toAccount = event.params.to
  let balanceOfToAccountResult = cTokenContract.try_balanceOf(toAccount)
  if (balanceOfToAccountResult.reverted) {
    log.warning('[handleTransfer] try_balanceOf({}) on {} reverted', [
      toAccount.toHexString(),
      marketID,
    ])
  } else {
    if (balanceOfToAccountResult.value.equals(event.params.amount)) {
      market.supplierCount = market.supplierCount + 1
      market.save()
    }
  }
  // check from
  let fromAccount = event.params.from
  let balanceOfFromAccountResult = cTokenContract.try_balanceOf(fromAccount)
  if (balanceOfFromAccountResult.reverted) {
    log.warning('[handleTransfer] try_balanceOf({}) on {} reverted', [
      fromAccount.toHexString(),
      marketID,
    ])
  } else {
    if (balanceOfFromAccountResult.value.equals(event.params.amount)) {
      market.supplierCount = market.supplierCount - 1
      market.save()
    }
  }

  let amountUnderlying = market.exchangeRate.times(
    event.params.amount.toBigDecimal().div(cTokenDecimalsBD),
  )
  let amountUnderlyingTruncated = amountUnderlying.truncate(market.underlyingDecimals)

  // Checking if the tx is FROM the cToken contract (i.e. this will not run when minting)
  // If so, it is a mint, and we don't need to run these calculations
  let accountFromID = event.params.from.toHex()
  if (accountFromID != marketID) {
    let accountFrom = Account.load(accountFromID)
    if (accountFrom == null) {
      createAccount(accountFromID)
    }

    // Update cTokenStats common for all events, and return the stats to update unique
    // values for each event
    let cTokenStatsFrom = updateCommonCTokenStats(
      market.id,
      market.symbol,
      accountFromID,
      event.transaction.hash,
      event.block.timestamp,
      event.block.number,
      event.logIndex,
    )

    cTokenStatsFrom.cTokenBalance = cTokenStatsFrom.cTokenBalance.minus(
      event.params.amount.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals),
    )

    cTokenStatsFrom.totalUnderlyingRedeemed =
      cTokenStatsFrom.totalUnderlyingRedeemed.plus(amountUnderlyingTruncated)
    cTokenStatsFrom.save()
  }

  // Checking if the tx is TO the cToken contract (i.e. this will not run when redeeming)
  // If so, we ignore it. this leaves an edge case, where someone who accidentally sends
  // cTokens to a cToken contract, where it will not get recorded. Right now it would
  // be messy to include, so we are leaving it out for now TODO fix this in future
  let accountToID = event.params.to.toHex()
  if (accountToID != marketID) {
    let accountTo = Account.load(accountToID)
    if (accountTo == null) {
      createAccount(accountToID)
    }

    // Update cTokenStats common for all events, and return the stats to update unique
    // values for each event
    let cTokenStatsTo = updateCommonCTokenStats(
      market.id,
      market.symbol,
      accountToID,
      event.transaction.hash,
      event.block.timestamp,
      event.block.number,
      event.logIndex,
    )

    cTokenStatsTo.cTokenBalance = cTokenStatsTo.cTokenBalance.plus(
      event.params.amount.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals),
    )

    cTokenStatsTo.totalUnderlyingSupplied = cTokenStatsTo.totalUnderlyingSupplied.plus(
      amountUnderlyingTruncated,
    )
    cTokenStatsTo.save()
  }

  let transferID = event.transaction.hash
    .toHexString()
    .concat('-')
    .concat(event.transactionLogIndex.toString())

  let transfer = new TransferEvent(transferID)
  transfer.amount = event.params.amount.toBigDecimal().div(cTokenDecimalsBD)
  transfer.to = event.params.to.toHexString()
  transfer.from = event.params.from.toHexString()
  transfer.blockNumber = event.block.number.toI32()
  transfer.blockTime = event.block.timestamp.toI32()
  transfer.cTokenSymbol = market.symbol
  transfer.save()
}

export function handleAccrueInterest(event: AccrueInterest): void {
  updateMarket(
    event.address,
    event.block.timestamp.toI32(),
    event.block.number.toI32(),
    event,
  )
  snapshotMarket(event.address, event.block.timestamp.toI32())
}

export function handleNewReserveFactor(event: NewReserveFactor): void {
  let marketID = event.address.toHex()
  let market = Market.load(marketID)!
  market.reserveFactor = event.params.newReserveFactorMantissa
  market.save()
}

export function handleNewMarketInterestRateModel(
  event: NewMarketInterestRateModel,
): void {
  let marketID = event.address.toHex()
  let market = Market.load(marketID)!
  market.interestRateModelAddress = event.params.newInterestRateModel.toHexString()
  market.save()
}

function updateMarketAccount2(marketID: string, accountID: string): void {
  let account2 = Account2.load(accountID)
  if (!account2) {
    log.warning('[updateMarketAccount2] account2 {} not found', [accountID])
    return
  }

  let accountAddress = Address.fromString(accountID)
  let contract = Comptroller.bind(Address.fromString(comptrollerAddr))
  let getAccountLiquidityResult = contract.try_getAccountLiquidity(accountAddress)
  if (getAccountLiquidityResult.reverted) {
    log.warning('[updateMarketAccount2] try_getAccountLiquidity({}) on {} reverted', [
      accountID,
      comptrollerAddr,
    ])
  } else {
    account2.accountLiquidity = getAccountLiquidityResult.value.getValue1()
    account2.accountShortfall = getAccountLiquidityResult.value.getValue2()
  }

  let rewardAccruedProtocolResult = contract.try_rewardAccrued(
    ProtocolTokenRewardType,
    accountAddress,
  )
  if (rewardAccruedProtocolResult.reverted) {
    log.warning('[updateMarketAccount2] try_rewardAccrued({}, {}) on {} reverted', [
      ProtocolTokenRewardType.toString(),
      accountID,
      comptrollerAddr,
    ])
  } else {
    account2.rewardAccruedProtocol = rewardAccruedProtocolResult.value
  }
  let nativeRewardAccruedResult = contract.try_rewardAccrued(
    NativeTokenRewardType,
    accountAddress,
  )
  if (nativeRewardAccruedResult.reverted) {
    log.warning('[updateMarketAccount2] try_rewardAccrued({}, {}) on {} reverted', [
      NativeTokenRewardType.toString(),
      accountID,
      comptrollerAddr,
    ])
  } else {
    account2.rewardAccruedNative = nativeRewardAccruedResult.value
  }
  let govTokenContract = GovToken.bind(Address.fromString(govTokenAddr))

  let govTokenBalanceResult = govTokenContract.try_balanceOf(accountAddress)
  if (govTokenBalanceResult.reverted) {
    log.warning('[updateMarketAccount2] try_balanceOf({}) on {} reverted', [
      accountID,
      govTokenAddr,
    ])
  } else {
    account2.govTokenBalance = govTokenBalanceResult.value
  }

  let govTokenAllowanceResult = govTokenContract.try_allowance(
    accountAddress,
    Address.fromString(safetyModuleAddr),
  )
  if (govTokenAllowanceResult.reverted) {
    log.warning('[updateMarketAccount2] try_allowance({}, {}) on {} reverted', [
      accountID,
      safetyModuleAddr,
      govTokenAddr,
    ])
  } else {
    account2.govTokenAllowance = govTokenAllowanceResult.value
  }
  account2.save()

  let marketAccountID = marketID.concat('-').concat(accountID)
  let marketAccount2 = MarketAccount2.load(marketAccountID)
  if (!marketAccount2) {
    log.warning('[updateMarketAccount2] market account2 {} not found', [marketAccountID])
    return
  }

  let cTokenContract = CToken.bind(Address.fromString(marketID))
  let cTokenBalanceResult = cTokenContract.try_balanceOf(Address.fromString(accountID))
  if (cTokenBalanceResult.reverted) {
    log.warning('[updateMarketAccount2] try_balanceOf({}) on {} reverted', [
      accountID,
      marketID,
    ])
  } else {
    marketAccount2.mTokenBalance = cTokenBalanceResult.value
  }

  let market = Market.load(marketID)
  if (!market) {
    log.warning('[updateMarketAccount2] market {} not found', [marketID])
    return
  }
  // subgraph won't be able to fetch native token balance and allowance
  // by native token, i mean ETH for ethereum mainnet, MOVR for moonriver
  // in moonwell subgraph, a native token has address 0x0000000000000000000000000000000000000000
  if (market.underlyingAddress == '0x0000000000000000000000000000000000000000') {
    return
  }
  let tokenContract = ERC20.bind(Address.fromString(market.underlyingAddress))
  let tokenBalanceResult = tokenContract.try_balanceOf(accountAddress)
  if (tokenBalanceResult.reverted) {
    log.warning('[updateMarketAccount2] try_balanceOf({}) on {} reverted', [
      accountID,
      market.underlyingAddress,
    ])
  } else {
    marketAccount2.tokenBalance = tokenBalanceResult.value
  }
  let tokenAllowanceResult = tokenContract.try_allowance(
    accountAddress,
    Address.fromString(safetyModuleAddr),
  )
  if (tokenAllowanceResult.reverted) {
    log.warning('[updateMarketAccount2] try_allowance({}, {}) on {} reverted', [
      accountID,
      safetyModuleAddr,
      market.underlyingAddress,
    ])
  } else {
    marketAccount2.tokenAllowance = tokenAllowanceResult.value
  }
  marketAccount2.save()
}
