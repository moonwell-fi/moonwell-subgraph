import { Address, log, dataSource } from '@graphprotocol/graph-ts'
import {
  MarketEntered,
  MarketExited,
  NewCloseFactor,
  NewCollateralFactor,
  NewLiquidationIncentive,
  NewPriceOracle,
  MarketListed,
  SupplyRewardSpeedUpdated,
  BorrowRewardSpeedUpdated,
  NewBorrowCap,
  ActionPaused1 as MTokenActionPaused,
  DistributedSupplierReward,
  DistributedBorrowerReward,
} from '../generated/Comptroller/Comptroller'

import { CToken } from '../generated/templates'
import {
  Market,
  Account,
  Comptroller,
} from '../generated/schema'
import {
  mantissaFactorBD,
  updateCommonCTokenStats,
  createAccount,
  getOrCreateComptroller,
  ProtocolTokenRewardType,
  NativeTokenRewardType,
  getOrCreateMarketAccount2,
} from './helpers'
import { createMarket } from './markets'
import { Feed } from '../generated/templates'

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

  if (dataSource.network() != 'mbase') {
    // ignore feed on moonbase
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

  market.borrowerCount = market.borrowerCount + 1
  market.save()

  let accountID = event.params.account.toHexString()
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

  getOrCreateMarketAccount2(marketID, accountID);
}

// TODO: delete associated MarketAccount2
export function handleMarketExited(event: MarketExited): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleMarketExited] market {} not found', [marketID])
    return
  }

  market.borrowerCount = market.borrowerCount - 1
  market.save()

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

export function handleSupplyRewardSpeedUpdated(event: SupplyRewardSpeedUpdated): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleSupplyRewardSpeedUpdated] market {} not found', [marketID])
    return
  }

  let rewardType = event.params.rewardToken
  let newSpeed = event.params.newSupplyRewardSpeed
  if (rewardType == ProtocolTokenRewardType) {
    market.supplyRewardSpeedProtocol = newSpeed
  } else if (rewardType == NativeTokenRewardType) {
    market.supplyRewardSpeedNative = newSpeed
  }
  market.save()
}

export function handleBorrowRewardSpeedUpdated(event: BorrowRewardSpeedUpdated): void {
  let marketID = event.params.mToken.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleBorrowRewardSpeedUpdated] market {} not found', [marketID])
    return
  }

  let rewardType = event.params.rewardToken
  let newSpeed = event.params.newBorrowRewardSpeed
  if (rewardType == ProtocolTokenRewardType) {
    market.borrowRewardSpeedProtocol = newSpeed
  } else if (rewardType == NativeTokenRewardType) {
    market.borrowRewardSpeedNative = newSpeed
  }
  market.save()
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

export function handleDistributedSupplierReward(event: DistributedSupplierReward): void {
  let rewardType = event.params.tokenType
  let marketID = event.params.mToken.toHexString()
  let supplier = event.params.borrower.toHexString()

  let marketAccount2 = getOrCreateMarketAccount2(marketID, supplier);
  if (rewardType == ProtocolTokenRewardType) {
    marketAccount2.rewardSupplierIndexProtocol = event.params.wellBorrowIndex
  } else if (rewardType == NativeTokenRewardType) {
    marketAccount2.rewardSupplierIndexNative = event.params.wellBorrowIndex
  }
  marketAccount2.save()
}

export function handleDistributedBorrowerReward(event: DistributedBorrowerReward): void {
  let rewardType = event.params.tokenType
  let marketID = event.params.mToken.toHexString()
  let borrower = event.params.borrower.toHexString()

  let marketAccount2 = getOrCreateMarketAccount2(marketID, borrower);
  if (rewardType == ProtocolTokenRewardType) {
    marketAccount2.rewardBorrowerIndexProtocol = event.params.wellBorrowIndex
  } else if (rewardType == NativeTokenRewardType) {
    marketAccount2.rewardBorrowerIndexNative = event.params.wellBorrowIndex
  }
  marketAccount2.save()
}
