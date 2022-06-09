import { Address, BigDecimal, BigInt, log } from '@graphprotocol/graph-ts'
import { Market } from '../generated/schema'
import { Comptroller as ComptrollerContract } from '../generated/Comptroller/Comptroller'
import { PriceOracle } from '../generated/templates/CToken/PriceOracle'
import { ERC20 } from '../generated/templates/CToken/ERC20'
import { AccrueInterest, CToken } from '../generated/templates/CToken/CToken'
import { SolarbeamLPToken } from '../generated/templates/CToken/SolarbeamLPToken'

import {
  exponentToBigDecimal,
  mantissaFactor,
  mantissaFactorBD,
  cTokenDecimalsBD,
  zeroBD,
  getOrCreateComptroller,
  convertSecondRateMantissaToAPY,
  zeroBI,
  daysPerYear,
  intToBigDecimal,
  ProtocolTokenRewardType,
  NativeTokenRewardType,
  addrEq,
} from './helpers'
import {
  comptrollerAddr,
  nativeToken,
  mNativeAddr,
  protocolNativePairAddr,
  protocolNativePairStartBlock,
} from './constants'

function getTokenPrice(token: Address, underlyingDecimals: i32): BigDecimal {
  let comptroller = getOrCreateComptroller()
  let oracle = PriceOracle.bind(Address.fromString(comptroller.priceOracle))
  let tryPrice = oracle.try_getUnderlyingPrice(token)

  return tryPrice.reverted
    ? zeroBD
    : tryPrice.value
        .toBigDecimal()
        .div(exponentToBigDecimal(18 - underlyingDecimals + 18))
}

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

  return market
}

function getETHinUSD(): BigDecimal {
  let comptroller = getOrCreateComptroller()
  let oracleAddress = Address.fromString(comptroller.priceOracle)
  let oracle = PriceOracle.bind(oracleAddress)
  let tryPrice = oracle.try_getUnderlyingPrice(Address.fromString(mNativeAddr))

  let ethPriceInUSD = tryPrice.reverted
    ? zeroBD
    : tryPrice.value.toBigDecimal().div(mantissaFactorBD)

  return ethPriceInUSD
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

    let ethPriceInUSD = getETHinUSD()

    // if cETH, we only update USD price
    if (addrEq(market.id, mNativeAddr)) {
      market.underlyingPriceUSD = ethPriceInUSD.truncate(market.underlyingDecimals)
    } else {
      let tokenPriceUSD = getTokenPrice(marketAddress, market.underlyingDecimals)
      market.underlyingPrice = tokenPriceUSD
        .div(ethPriceInUSD)
        .truncate(market.underlyingDecimals)
      market.underlyingPriceUSD = tokenPriceUSD.truncate(market.underlyingDecimals)
    }

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

    let nativeTokenPriceUSD = market.underlyingPriceUSD
    let protocolTokenPriceUSD = zeroBD
    if (blockNumber >= protocolNativePairStartBlock) {
      let oneProtocolTokenInNativeToken = getOneProtocolTokenInNativeToken()
      protocolTokenPriceUSD = nativeTokenPriceUSD.times(oneProtocolTokenInNativeToken)
      if (protocolTokenPriceUSD.gt(zeroBD)) {
        let amountUnderlying = market.exchangeRate.times(market.totalSupply)
        market.borrowRewardNative = getRewardEmission(
          protocolTokenPriceUSD,
          amountUnderlying,
          market.underlyingPriceUSD,
          market.borrowRewardSpeedNative,
        )
        market.borrowRewardProtocol = getRewardEmission(
          protocolTokenPriceUSD,
          amountUnderlying,
          market.underlyingPriceUSD,
          market.borrowRewardSpeedProtocol,
        )
        market.supplyRewardNative = getRewardEmission(
          protocolTokenPriceUSD,
          amountUnderlying,
          market.underlyingPriceUSD,
          market.supplyRewardSpeedNative,
        )
        market.supplyRewardProtocol = getRewardEmission(
          protocolTokenPriceUSD,
          amountUnderlying,
          market.underlyingPriceUSD,
          market.supplyRewardSpeedProtocol,
        )
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

function getOneProtocolTokenInNativeToken(): BigDecimal {
  let lpTokenContract = SolarbeamLPToken.bind(Address.fromString(protocolNativePairAddr))
  let getReservesResult = lpTokenContract.try_getReserves()
  if (getReservesResult.reverted) {
    log.warning('[getOneProtocolTokenInNativeToken] reverted', [])
    return zeroBD
  }
  let MOVRReserve = getReservesResult.value.get_reserve0()
  let MFAMReserve = getReservesResult.value.get_reserve1()
  return MOVRReserve.toBigDecimal().div(MFAMReserve.toBigDecimal())
}

function getRewardEmission(
  protocolTokenPriceUSD: BigDecimal,
  underlyingAmount: BigDecimal,
  underlyingPriceUSD: BigDecimal,
  rewardSpeed: BigInt,
): BigDecimal {
  return rewardSpeed
    .toBigDecimal()
    .div(mantissaFactorBD)
    .times(intToBigDecimal(daysPerYear))
    .times(protocolTokenPriceUSD)
    .div(underlyingAmount.times(underlyingPriceUSD))
    .times(intToBigDecimal(daysPerYear))
    .times(intToBigDecimal(100))
}
