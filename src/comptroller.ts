import {
  MarketEntered,
  MarketExited,
  NewCloseFactor,
  NewCollateralFactor,
  NewLiquidationIncentive,
  NewMaxAssets,
  NewPriceOracle,
  MarketListed,
} from '../generated/Comptroller/Comptroller'

import { CToken } from '../generated/templates'
import { Market, Account } from '../generated/schema'
import {
  mantissaFactorBD,
  updateCommonCTokenStats,
  createAccount,
  getOrCreateComptroller,
} from './helpers'
import { createMarket } from './markets'

export function handleMarketListed(event: MarketListed): void {
  // Dynamically index all new listed tokens
  CToken.create(event.params.cToken)
  // Create the market for this token, since it's now been listed.
  let market = createMarket(event.params.cToken.toHexString())

  market.save()
}

export function handleMarketEntered(event: MarketEntered): void {
  let market = Market.load(event.params.cToken.toHexString())
  if (market != null) {
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
}

export function handleMarketExited(event: MarketExited): void {
  let market = Market.load(event.params.cToken.toHexString())
  if (market != null) {
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
}

export function handleNewCloseFactor(event: NewCloseFactor): void {
  let comptroller = getOrCreateComptroller()
  comptroller.closeFactor = event.params.newCloseFactorMantissa
    .toBigDecimal()
    .div(mantissaFactorBD)
  comptroller.save()
}

export function handleNewCollateralFactor(event: NewCollateralFactor): void {
  let market = Market.load(event.params.cToken.toHexString())
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

export function handleNewMaxAssets(event: NewMaxAssets): void {
  let comptroller = getOrCreateComptroller()
  comptroller.maxAssets = event.params.newMaxAssets
  comptroller.save()
}

export function handleNewPriceOracle(event: NewPriceOracle): void {
  let comptroller = getOrCreateComptroller()
  comptroller.priceOracle = event.params.newPriceOracle.toHexString()
  comptroller.save()
}
