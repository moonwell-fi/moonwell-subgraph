import { Address, log, dataSource } from '@graphprotocol/graph-ts'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'
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
import { Market, Account, Comptroller } from '../generated/schema'
import {
  zeroBD,
  mantissaFactorBD,
  updateCommonCTokenStats,
  createAccount,
  getOrCreateComptroller,
  ProtocolTokenRewardType,
  NativeTokenRewardType,
  getOrCreateRewardClaim,
  getOrCreateRewardClaimToken,
  getOrCreateLifetimeRewards
} from './helpers'
import { createMarket, getOneProtocolTokenInNativeToken } from './markets'
import { Feed } from '../generated/templates'
import config from '../config/config'

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
  
  let comptrollerContract = ComptrollerContract.bind(
    Address.fromString(config.comptrollerAddr),
  )
  let accountID = event.params.borrower.toHexString()
  let marketID = event.params.mToken.toHexString().toLowerCase()
  let tokenType = event.params.tokenType
  let tx_hash = event.transaction.hash.toHexString().toLowerCase()
  let wellDelta = event.params.wellDelta
  let priceOfRewardToken = zeroBD
  let tokenSymbol = ''
  if (tokenType = NativeTokenRewardType) { // Type 1 = native token
    let nativeMarket = Market.load(config.mNativeAddr.toLowerCase())
    if (nativeMarket) {
      tokenSymbol = config.nativeToken
      priceOfRewardToken = nativeMarket.underlyingPriceUSD
    } else {
      log.warning('[handleDistributedSupplierReward] native market {} not found', [config.mNativeAddr])
      return
    }
  } else { // Type 0 = protocol token
    tokenSymbol = config.govTokenSymbol
    priceOfRewardToken = getOneProtocolTokenInNativeToken(config.protocolNativePairProtocolIndex)
  }
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleDistributedSupplierReward] market {} not found', [marketID])
    return
  }
  let rewardClaim = getOrCreateRewardClaim(accountID, tx_hash)
  if (!rewardClaim) {
    log.warning('[handleDistributedSupplierReward] reward claim {} not found', [accountID])
    return
  }
  
  let try_accrued = comptrollerContract.try_rewardAccrued(tokenType, event.params.borrower);
  if (try_accrued.reverted) {
    log.warning('[handleDistributedSupplierReward] try_rewardAccrued({}, {}) reverted', [tokenType.toString(), accountID])
    return
  } 

  let rewardClaimToken = getOrCreateRewardClaimToken(
    accountID,
    tx_hash,
    tokenSymbol,
    try_accrued.value.toBigDecimal()
  )
  if (!rewardClaimToken) {
    log.warning('[handleDistributedSupplierReward] reward claim token {} not found', [accountID])
    return
  }

  rewardClaimToken.amount = rewardClaimToken.amount
    .plus(wellDelta.toBigDecimal())
  rewardClaimToken.amountUSD = rewardClaimToken.amount.times(priceOfRewardToken)
  rewardClaimToken.save()
  // Now update lifetime rewards
  let lifetimeRewards = getOrCreateLifetimeRewards(accountID, tokenSymbol)
  if (!lifetimeRewards) {
    log.warning('[handleDistributedSupplierReward] lifetime rewards {} not found', [accountID])
    return
  }
  lifetimeRewards.amount = lifetimeRewards.amount
    .plus(try_accrued.value.toBigDecimal())
  lifetimeRewards.amountUSD = lifetimeRewards.amount
    .times(priceOfRewardToken)
  lifetimeRewards.save()
}

export function handleDistributedBorrowerReward(event: DistributedBorrowerReward): void {
  
  let comptrollerContract = ComptrollerContract.bind(
    Address.fromString(config.comptrollerAddr),
  )

  let accountID = event.params.borrower.toHexString().toLowerCase()
  let marketID = event.params.mToken.toHexString().toLowerCase()
  let tokenType = event.params.tokenType
  let tx_hash = event.transaction.hash.toHexString().toLowerCase()
  let wellDelta = event.params.wellDelta
  let priceOfRewardToken = zeroBD
  let tokenSymbol = ''
  if (tokenType = NativeTokenRewardType) { // Type 1 = native token
    let nativeMarket = Market.load(config.mNativeAddr.toLowerCase())
    if (nativeMarket) {
      tokenSymbol = config.nativeToken
      priceOfRewardToken = nativeMarket.underlyingPriceUSD
    } else {
      log.warning('[handleDistributedBorrowerReward] native market {} not found', [config.mNativeAddr])
      return
    }
  } else { // Type 0 = protocol token
    tokenSymbol = config.govTokenSymbol
    priceOfRewardToken = getOneProtocolTokenInNativeToken(config.protocolNativePairProtocolIndex)
  }
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[handleDistributedBorrowerReward] market {} not found', [marketID])
    return
  }
  let rewardClaim = getOrCreateRewardClaim(accountID, tx_hash)
  if (!rewardClaim) {
    log.warning('[handleDistributedBorrowerReward] reward claim {} not found', [accountID])
    return
  }
  
  let try_accrued = comptrollerContract.try_rewardAccrued(tokenType, event.params.borrower);
  if (try_accrued.reverted) {
    log.warning('[handleDistributedSupplierReward] try_rewardAccrued('+tokenType.toString()+', '+accountID+') reverted', [])
    return
  } 

  //we want to get previously accrued rewards just once, otherwise we will sum it wrong
  let rewardClaimToken = getOrCreateRewardClaimToken(
    accountID,
    tx_hash,
    tokenSymbol,
    try_accrued.value.toBigDecimal()
  )
  if (!rewardClaimToken) {
    log.warning('[handleDistributedBorrowerReward] reward claim token {} not found', [accountID])
    return
  }

  rewardClaimToken.amount = rewardClaimToken.amount
    .plus(wellDelta.toBigDecimal())

  //the amount usd is always the sum amount * price, we want to recalculate it every time
  rewardClaimToken.amountUSD = rewardClaimToken.amount.times(priceOfRewardToken)
  rewardClaimToken.save()
}