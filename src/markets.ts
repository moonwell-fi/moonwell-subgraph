import { Address, BigDecimal, BigInt, log, dataSource } from '@graphprotocol/graph-ts'
import { Comptroller, Market } from '../generated/schema'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'
import { PriceOracle } from '../generated/templates/CToken/PriceOracle'
import { FeedProxy } from '../generated/Comptroller/FeedProxy'
import { ERC20 } from '../generated/templates/CToken/ERC20'
import { AccrueInterest, CToken } from '../generated/templates/CToken/CToken'
import { SolarbeamLPToken } from '../generated/templates/CToken/SolarbeamLPToken'
import { SafetyModule } from '../generated/templates/Feed/SafetyModule'

import {
  exponentToBigDecimal,
  mantissaFactor,
  mantissaFactorBD,
  cTokenDecimalsBD,
  zeroBD,
  convertSecondRateMantissaToAPY,
  zeroBI,
  addrEq,
  getOrCreateMarketDailySnapshot,
  getOrCreateStakingDailySnapshot,
} from './helpers'
import config from '../config/config'

export function createMarket(marketID: string): Market | null {
  let market = new Market(marketID)
  let marketAddress = Address.fromString(marketID)
  let cTokenContract = CToken.bind(marketAddress)

  // MGlimmer doesn't have method `underlying` (unlike MErc20) therefore we handle it differently
  if (addrEq(marketID, config.mNativeAddr)) {
    market.underlyingAddress = '0x0000000000000000000000000000000000000000'
    market.underlyingDecimals = 18
    market.underlyingPrice = BigDecimal.fromString('1')
    market.underlyingName = config.nativeToken
    market.underlyingSymbol = config.nativeToken
    market.underlyingPriceUSD = zeroBD
  } else {
    let underlyingAddrResult = cTokenContract.try_underlying()
    if (underlyingAddrResult.reverted) {
      log.warning('[createMarket] try_underlying on {} reverted', [
        marketAddress.toHexString(),
      ])
      return null
    } else {
      let underlyingAddr = underlyingAddrResult.value
      let underlyingContract = ERC20.bind(underlyingAddr)
      market.underlyingAddress = underlyingAddr.toHexString()
      market.underlyingDecimals = underlyingContract.decimals()
      market.underlyingName = underlyingContract.name()
      market.underlyingSymbol = underlyingContract.symbol()
      market.underlyingPriceUSD = zeroBD
      market.underlyingPrice = zeroBD
    }
  }

  let interestRateModelAddress = cTokenContract.try_interestRateModel()
  let reserveFactor = cTokenContract.try_reserveFactorMantissa()

  market.borrowRate = zeroBD
  market.cash = zeroBD
  market.collateralFactor = zeroBD
  market.exchangeRate = zeroBD
  market.interestRateModelAddress = interestRateModelAddress.reverted
    ? '0x0000000000000000000000000000000000000000'
    : interestRateModelAddress.value.toHexString()
  market.name = cTokenContract.name()
  market.reserves = zeroBD
  market.supplyRate = zeroBD
  market.symbol = cTokenContract.symbol()
  market.totalBorrows = zeroBD
  market.totalSupply = zeroBD
  market.borrowerCount = 0
  market.supplierCount = 0
  market.borrowCap = zeroBI
  market.badDebt = zeroBD

  market.borrowIndex = zeroBI
  market.reserveFactor = reserveFactor.reverted ? BigInt.fromI32(0) : reserveFactor.value

  market.accrualBlockTimestamp = 0
  market.blockTimestamp = 0
  market.mintPaused = false
  market.borrowPaused = false

  // find price feed of the market
  let comptroller = Comptroller.load('1')!
  let oracle = PriceOracle.bind(Address.fromString(comptroller.priceOracle))

  // for some reason, feed symbols are set differently for native token vs the rest
  // for example, setFeed(mMOVR, feed) for MOVR market, but setFeed(USDC, feed) for USDC market
  let symbol =
    market.underlyingSymbol == config.nativeToken
      ? market.symbol
      : market.underlyingSymbol
  let feedProxyAddress = oracle.getFeed(symbol)
  let feedProxy = FeedProxy.bind(feedProxyAddress)
  const result = feedProxy.try_aggregator()
  if (result.reverted) {
    log.warning('[createMarket] try_aggregator on {} reverted', [
      feedProxyAddress.toHexString(),
    ])
    market._feed = feedProxyAddress.toHexString() // fallback to feedProxy address
  } else {
    market._feed = result.value.toHexString()
  }

  return market
}

export function updateMarket(
  marketAddress: Address,
  blockTimestamp: i32,
  blockNumber: i32,
  event: AccrueInterest,
): void {
  let marketID = marketAddress.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[updateMarket] market {} not found', [marketID])
    return
  }

  // Only updateMarket if it has not been updated this block
  if (market.accrualBlockTimestamp != blockTimestamp) {
    let contract = CToken.bind(marketAddress)
    let comptrollerContract = ComptrollerContract.bind(
      Address.fromString(config.comptrollerAddr),
    )

    market.accrualBlockTimestamp = contract.accrualBlockTimestamp().toI32()
    market.blockTimestamp = blockTimestamp
    market.totalSupply = contract.totalSupply().toBigDecimal().div(cTokenDecimalsBD)

    market.exchangeRate = contract
      .exchangeRateStored()
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .times(cTokenDecimalsBD)
      .div(mantissaFactorBD)
      .truncate(mantissaFactor)

    market.reserves = contract
      .totalReserves()
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals)
    market.totalBorrows = event.params.totalBorrows
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals)
    market.cash = event.params.cashPrior
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals)
    market.borrowIndex = event.params.borrowIndex
    market.badDebt = zeroBD
    if ((blockNumber >= config.badDebtStartBlock) && (market.symbol != 'mGLMR')) {
      market.badDebt = contract.badDebt()
        .toBigDecimal()
        .div(exponentToBigDecimal(market.underlyingDecimals))
        .truncate(market.underlyingDecimals)
    }

    let borrowRatePerTimestampResult = contract.try_borrowRatePerTimestamp()
    if (borrowRatePerTimestampResult.reverted) {
      log.warning('[updateMarket] try_borrowRatePerTimestamp reverted', [])
    } else {
      market.borrowRate = convertSecondRateMantissaToAPY(
        borrowRatePerTimestampResult.value,
      )
    }

    let supplyRatePerTimestampResult = contract.try_supplyRatePerTimestamp()
    if (supplyRatePerTimestampResult.reverted) {
      log.info('[updateMarket] try_supplyRatePerTimestamp reverted', [])
    } else {
      market.supplyRate = convertSecondRateMantissaToAPY(
        supplyRatePerTimestampResult.value,
      )
    }

    // update the price of the market
    let underlyingTokenPriceUSD = getTokenPrice(
      Address.fromString(market.id),
      market.underlyingDecimals,
    )
    market.underlyingPriceUSD = underlyingTokenPriceUSD
    if (!addrEq(market.id, config.mNativeAddr)) {
      let nativeTokenPriceUSD = getTokenPrice(Address.fromString(config.mNativeAddr), 18)
      if (nativeTokenPriceUSD.gt(zeroBD)) {
        market.underlyingPrice = underlyingTokenPriceUSD.div(nativeTokenPriceUSD)
      }
    }
    /* snapshotMarket(
      Address.fromString(market.id),
      event.block.timestamp.toI32(),
      event.block.number.toI32()
    ) */ // This is not needed here, as it is already called in handleAnswerUpdated
    market.save()
  }
}

function getTokenPrice(token: Address, underlyingDecimals: i32): BigDecimal {
  let comptroller = Comptroller.load('1')!
  let oracle = PriceOracle.bind(Address.fromString(comptroller.priceOracle))
  let tryPrice = oracle.try_getUnderlyingPrice(token)

  return tryPrice.reverted
    ? zeroBD
    : tryPrice.value
        .toBigDecimal()
        .div(exponentToBigDecimal(18 - underlyingDecimals + 18))
}

export function snapshotMarket(
    marketAddress: Address,
    blockTimestamp: i32,
    blockNumber: i32): void {
  if (blockTimestamp < 1704096000) return; // Don't snapshot before 01-01-2024
  let marketID = marketAddress.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[snapshotMarket] market {} not found', [marketID])
    return
  }
  let snapshot = getOrCreateMarketDailySnapshot(marketID, blockTimestamp, blockNumber)
  if (snapshot.totalSupplies != zeroBD) return
  snapshot.totalBorrows = market.totalBorrows
  snapshot.totalBorrowsUSD = market.totalBorrows.times(market.underlyingPriceUSD)
  snapshot.totalSupplies = market.exchangeRate.times(market.totalSupply)
  snapshot.totalSupplies = snapshot.totalSupplies.minus(market.badDebt)
  snapshot.totalSuppliesUSD = market.exchangeRate
    .times(market.totalSupply)
    .times(market.underlyingPriceUSD)
  snapshot.save()
}

export function snapshotStaking(blockNumber: i32, blockTimestamp: i32): void {
  // Don't try to attempt a snapshot before the contract is deployed
  if (blockNumber < config.safetyModuleStartBlock) return
  let snapshot = getOrCreateStakingDailySnapshot(blockTimestamp)
  if (snapshot.totalStaked != zeroBD) return
  let safetyModuleContract = SafetyModule.bind(
    Address.fromString(config.safetyModuleAddr),
  )
  let totalSupply = safetyModuleContract.try_totalSupply()
  if (totalSupply.reverted) {
    log.warning('[snapshotStaking] try_totalSupply reverted on block {}', [blockNumber.toString()])
    return
  } else {
    snapshot.totalStaked = totalSupply.value.toBigDecimal().div(mantissaFactorBD)
  }
  let totalSupplyUSD = snapshot.totalStaked.times(getOneProtocolTokenInNativeToken(config.protocolNativePairProtocolIndex))
  snapshot.totalStakedUSD = totalSupplyUSD
  snapshot.save()
}

function getOneProtocolTokenInNativeToken(protocolIndex: i32): BigDecimal {
  let lpTokenContract = SolarbeamLPToken.bind(
    Address.fromString(config.protocolNativePairAddr),
  )
  let getReservesResult = lpTokenContract.try_getReserves()
  if (getReservesResult.reverted) {
    log.warning('[getOneProtocolTokenInNativeToken] reverted', [])
    return zeroBD
  }
  let reserve0 = getReservesResult.value.get_reserve0().toBigDecimal()
  let reserve1 = getReservesResult.value.get_reserve1().toBigDecimal()
  if (protocolIndex == 1) {
    return reserve0.div(reserve1)
  } else {
    return reserve1.div(reserve0)
  }
}
