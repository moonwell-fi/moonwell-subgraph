import { Address, BigDecimal, BigInt, log, dataSource } from '@graphprotocol/graph-ts'
import { Comptroller, Market } from '../generated/schema'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'
import { PriceOracle } from '../generated/templates/CToken/PriceOracle'
import { FeedProxy } from '../generated/Comptroller/FeedProxy'
import { ERC20 } from '../generated/templates/CToken/ERC20'
import { AccrueInterest, CToken } from '../generated/templates/CToken/CToken'
import { SolarbeamLPToken } from '../generated/templates/CToken/SolarbeamLPToken'

import {
  exponentToBigDecimal,
  mantissaFactor,
  mantissaFactorBD,
  cTokenDecimalsBD,
  zeroBD,
  convertSecondRateMantissaToAPY,
  zeroBI,
  daysPerYear,
  intToBigDecimal,
  ProtocolTokenRewardType,
  NativeTokenRewardType,
  addrEq,
  getOrCreateMarketDailySnapshot,
  secondsPerDay,
} from './helpers'
import {
  comptrollerAddr,
  nativeToken,
  mNativeAddr,
  protocolNativePairAddr,
  protocolNativePairStartBlock,
  protocolNativePairProtocolIndex,
} from './constants'

export function createMarket(marketID: string): Market | null {
  let market = new Market(marketID)
  let marketAddress = Address.fromString(marketID)
  let cTokenContract = CToken.bind(marketAddress)

  // MGlimmer doesn't have method `underlying` (unlike MErc20) therefore we handle it differently
  if (addrEq(marketID, mNativeAddr)) {
    market.underlyingAddress = '0x0000000000000000000000000000000000000000'
    market.underlyingDecimals = 18
    market.underlyingPrice = BigDecimal.fromString('1')
    market.underlyingName = nativeToken
    market.underlyingSymbol = nativeToken
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

  market.borrowIndex = zeroBI
  market.borrowRewardSpeedNative = zeroBI
  market.borrowRewardSpeedProtocol = zeroBI
  market.supplyRewardSpeedNative = zeroBI
  market.supplyRewardSpeedProtocol = zeroBI
  market.reserveFactor = reserveFactor.reverted ? BigInt.fromI32(0) : reserveFactor.value
  market.borrowRewardSpeedNative = zeroBI
  market.borrowRewardSpeedProtocol = zeroBI
  market.supplyRewardSpeedNative = zeroBI
  market.supplyRewardSpeedProtocol = zeroBI
  market.borrowRewardNative = zeroBD
  market.borrowRewardProtocol = zeroBD
  market.supplyRewardNative = zeroBD
  market.supplyRewardProtocol = zeroBD
  market.borrowRewardStateNativeIndex = zeroBI
  market.borrowRewardStateNativeTimestamp = 0
  market.borrowRewardStateProtocolIndex = zeroBI
  market.borrowRewardStateProtocolTimestamp = 0
  market.supplyRewardStateNativeIndex = zeroBI
  market.supplyRewardStateNativeTimestamp = 0
  market.supplyRewardStateProtocolIndex = zeroBI
  market.supplyRewardStateProtocolTimestamp = 0

  market.accrualBlockTimestamp = 0
  market.blockTimestamp = 0

  // find price feed of the market
  let comptroller = Comptroller.load('1')!
  let oracle = PriceOracle.bind(Address.fromString(comptroller.priceOracle))

  // for some reason, feed symbols are set differently for native token vs the rest
  // for example, setFeed(mMOVR, feed) for MOVR market, but setFeed(USDC, feed) for USDC market
  let symbol =
    market.underlyingSymbol == nativeToken ? market.symbol : market.underlyingSymbol
  let feedProxyAddress = oracle.getFeed(symbol)
  let feedProxy = FeedProxy.bind(feedProxyAddress)
  if (dataSource.network() == 'mbase') {
    // FeedProxy on moonbase doesn't have aggregator, skip it
    market._feed = '0x0000000000000000000000000000000000000000'
  } else {
    market._feed = feedProxy.aggregator().toHexString()
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
      Address.fromString(comptrollerAddr),
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

    let nativeMarket = Market.load(mNativeAddr)
    if (nativeMarket) {
      let nativeTokenPriceUSD = nativeMarket.underlyingPriceUSD
      if (nativeTokenPriceUSD.gt(zeroBD)) {
        let amountUnderlying = market.exchangeRate.times(market.totalSupply)
        market.borrowRewardNative = getRewardEmission(
          nativeTokenPriceUSD,
          market.totalBorrows,
          market.underlyingPriceUSD,
          market.borrowRewardSpeedNative,
        )
        market.supplyRewardNative = getRewardEmission(
          nativeTokenPriceUSD,
          amountUnderlying,
          market.underlyingPriceUSD,
          market.supplyRewardSpeedNative,
        )
        if (blockNumber >= protocolNativePairStartBlock) {
          // get protocol token price
          let protocolTokenPriceUSD = getOneProtocolTokenInNativeToken(
            protocolNativePairProtocolIndex,
          ).times(nativeTokenPriceUSD)
          if (protocolTokenPriceUSD.gt(zeroBD)) {
            market.borrowRewardProtocol = getRewardEmission(
              protocolTokenPriceUSD,
              market.totalBorrows,
              market.underlyingPriceUSD,
              market.borrowRewardSpeedProtocol,
            )
            market.supplyRewardProtocol = getRewardEmission(
              protocolTokenPriceUSD,
              amountUnderlying,
              market.underlyingPriceUSD,
              market.supplyRewardSpeedProtocol,
            )
          }
        }
      }
    }

    let borrowRewardStateNativeResult = comptrollerContract.try_rewardBorrowState(
      NativeTokenRewardType,
      marketAddress,
    )
    if (borrowRewardStateNativeResult.reverted) {
      log.warning('[updateMarket] try_rewardBorrowState(MOVR, MTOKEN) reverted', [])
    } else {
      market.borrowRewardStateNativeIndex = borrowRewardStateNativeResult.value.getIndex()
      market.borrowRewardStateNativeTimestamp = borrowRewardStateNativeResult.value
        .getTimestamp()
        .toI32()
    }

    let borrowRewardStateProtocolResult = comptrollerContract.try_rewardBorrowState(
      ProtocolTokenRewardType,
      marketAddress,
    )
    if (borrowRewardStateProtocolResult.reverted) {
      log.warning('[updateMarket] try_rewardBorrowState(MFAM, MTOKEN) reverted', [])
    } else {
      market.borrowRewardStateProtocolIndex =
        borrowRewardStateProtocolResult.value.getIndex()
      market.borrowRewardStateProtocolTimestamp = borrowRewardStateProtocolResult.value
        .getTimestamp()
        .toI32()
    }

    let supplyRewardStateNativeResult = comptrollerContract.try_rewardSupplyState(
      NativeTokenRewardType,
      marketAddress,
    )
    if (supplyRewardStateNativeResult.reverted) {
      log.warning('[updateMarket] try_rewardSupplyState(MOVR, MTOKEN) reverted', [])
    } else {
      market.supplyRewardStateNativeIndex = supplyRewardStateNativeResult.value.getIndex()
      market.supplyRewardStateNativeTimestamp = supplyRewardStateNativeResult.value
        .getTimestamp()
        .toI32()
    }

    let supplyRewardStateProtocolResult = comptrollerContract.try_rewardSupplyState(
      ProtocolTokenRewardType,
      marketAddress,
    )
    if (supplyRewardStateProtocolResult.reverted) {
      log.warning('[updateMarket] try_rewardSupplyState(MFAM, MTOKEN) reverted', [])
    } else {
      market.supplyRewardStateProtocolIndex =
        supplyRewardStateProtocolResult.value.getIndex()
      market.supplyRewardStateProtocolTimestamp = supplyRewardStateProtocolResult.value
        .getTimestamp()
        .toI32()
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

    market.save()
  }
}

export function snapshotMarket(marketAddress: Address, blockTimestamp: i32): void {
  let marketID = marketAddress.toHexString()
  let market = Market.load(marketID)
  if (!market) {
    log.warning('[snapshotMarket] market {} not found', [marketID])
    return
  }
  let snapshot = getOrCreateMarketDailySnapshot(marketID, blockTimestamp)
  snapshot.totalBorrows = market.totalBorrows
  snapshot.totalBorrowsUSD = market.totalBorrows.times(market.underlyingPriceUSD)
  snapshot.totalSupplies = market.exchangeRate.times(market.totalSupply)
  snapshot.totalSuppliesUSD = market.exchangeRate
    .times(market.totalSupply)
    .times(market.underlyingPriceUSD)
  snapshot.save()
}

function getOneProtocolTokenInNativeToken(protocolIndex: i32): BigDecimal {
  let lpTokenContract = SolarbeamLPToken.bind(Address.fromString(protocolNativePairAddr))
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

function getRewardEmission(
  rewardTokenPriceUSD: BigDecimal,
  underlyingAmount: BigDecimal,
  underlyingPriceUSD: BigDecimal,
  rewardSpeed: BigInt,
): BigDecimal {
  if (underlyingAmount == zeroBD || underlyingPriceUSD == zeroBD) {
    return zeroBD
  }
  return rewardSpeed
    .toBigDecimal()
    .div(mantissaFactorBD)
    .times(intToBigDecimal(secondsPerDay))
    .times(rewardTokenPriceUSD)
    .div(underlyingAmount.times(underlyingPriceUSD))
    .times(intToBigDecimal(daysPerYear))
    .times(intToBigDecimal(100))
}
