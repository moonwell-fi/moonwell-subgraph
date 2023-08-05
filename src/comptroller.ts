import { Address, log, dataSource, ethereum, BigInt } from '@graphprotocol/graph-ts'
import {
  MarketEntered,
  MarketExited,
  NewCloseFactor,
  NewCollateralFactor,
  NewLiquidationIncentive,
  NewPriceOracle,
  MarketListed,
  NewBorrowCap,
  ActionPaused1 as MTokenActionPaused,
} from '../generated/Comptroller/Comptroller'

import { CToken } from '../generated/templates'
import { Market, Account, Comptroller } from '../generated/schema'
import {
  mantissaFactorBD,
  updateCommonCTokenStats,
  createAccount,
  getOrCreateComptroller,
} from './helpers'
import { createMarket } from './markets'
import { Feed } from '../generated/templates'
import { snapshotMarket } from './markets'

export function handleMarketListed(event: MarketListed): void {
  // Dynamically index all new listed tokens
  CToken.create(event.params.mToken)
  // Create the market for this token, since it's now been listed.
  let marketID = event.params.mToken.toHexString()
  let market = createMarket(marketID)
  if (!market) {
    log.warning('[handleMarketListed] market {} fails to create', [marketID])
    return
  }

  market.save()

  let comptroller = Comptroller.load('1')!
  let markets = comptroller._markets
  markets.push(marketID)
  comptroller._markets = markets
  comptroller.save()

  if (dataSource.network() != 'mbase' && dataSource.network() != 'base-testnet') {
    // ignore feed on moonbase and base-testnet
    Feed.create(Address.fromString(market._feed))
  }
}

export function handleMarketEntered(event: MarketEntered): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleMarketEntered] market {} not found', [marketID])
    return
  }

  let accountID = event.params.account.toHex()
  let account = Account.load(accountID)
  if (account == null) {
    createAccount(accountID)
  }

  let cTokenStats = updateCommonCTokenStats(
    market.id,
    market.symbol,
    accountID,
    event.transaction.hash,
    event.block.timestamp,
    event.block.number,
    event.logIndex,
  )
  cTokenStats.enteredMarket = true
  cTokenStats.save()
}

export function handleMarketExited(event: MarketExited): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleMarketExited] market {} not found', [marketID])
    return
  }

  let accountID = event.params.account.toHex()
  let account = Account.load(accountID)
  if (account == null) {
    createAccount(accountID)
  }

  let cTokenStats = updateCommonCTokenStats(
    market.id,
    market.symbol,
    accountID,
    event.transaction.hash,
    event.block.timestamp,
    event.block.number,
    event.logIndex,
  )
  cTokenStats.enteredMarket = false
  cTokenStats.save()
}

export function handleNewCloseFactor(event: NewCloseFactor): void {
  let comptroller = getOrCreateComptroller()
  comptroller.closeFactor = event.params.newCloseFactorMantissa
    .toBigDecimal()
    .div(mantissaFactorBD)
  comptroller.save()
}

export function handleNewCollateralFactor(event: NewCollateralFactor): void {
  let market = Market.load(event.params.mToken.toHexString())
  if (market != null) {
    market.collateralFactor = event.params.newCollateralFactorMantissa
      .toBigDecimal()
      .div(mantissaFactorBD)
    market.save()
  }
}

// This should be the first event acccording to etherscan but it isn't.... price oracle is. weird
export function handleNewLiquidationIncentive(event: NewLiquidationIncentive): void {
  let comptroller = getOrCreateComptroller()
  comptroller.liquidationIncentive = event.params.newLiquidationIncentiveMantissa
    .toBigDecimal()
    .div(mantissaFactorBD)
  comptroller.save()
}

export function handleNewPriceOracle(event: NewPriceOracle): void {
  let comptroller = getOrCreateComptroller()
  comptroller.priceOracle = event.params.newPriceOracle.toHexString()
  comptroller.save()
}

export function handleNewBorrowCap(event: NewBorrowCap): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleNewBorrowCap] market {} not found', [marketID])
    return
  }

  market.borrowCap = event.params.newBorrowCap
  market.save()
}

export function handleMTokenActionPaused(event: MTokenActionPaused): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleMTokenActionPaused] market {} not found', [marketID])
    return
  }

  if (event.params.action == 'Mint') {
    market.mintPaused = event.params.pauseState
  } else if (event.params.action == 'Borrow') {
    market.borrowPaused = event.params.pauseState
  }
  market.save()
}
