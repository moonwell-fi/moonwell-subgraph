import { Address, BigDecimal, BigInt, log } from '@graphprotocol/graph-ts'
import { Market } from '../generated/schema'
import { PriceOracle2 } from '../generated/templates/CToken/PriceOracle2'
import { ERC20 } from '../generated/templates/CToken/ERC20'
import { CToken } from '../generated/templates/CToken/CToken'

import {
  exponentToBigDecimal,
  mantissaFactor,
  mantissaFactorBD,
  cTokenDecimalsBD,
  zeroBD,
  getOrCreateComptroller,
} from './helpers'

let mMovrAddress = '0x6a1a771c7826596652dadc9145feaae62b1cd07f'

function getTokenPrice(token: Address, underlyingDecimals: i32): BigDecimal {
  let comptroller = getOrCreateComptroller()
  let oracle = PriceOracle2.bind(Address.fromString(comptroller.priceOracle))
  let tryPrice = oracle.try_getUnderlyingPrice(token)

  return tryPrice.reverted
    ? zeroBD
    : tryPrice.value
        .toBigDecimal()
        .div(exponentToBigDecimal(18 - underlyingDecimals + 18))
}

export function createMarket(marketAddress: string): Market {
  let market = new Market(marketAddress)
  let contract = CToken.bind(Address.fromString(marketAddress))

  // MGlimmer doesn't have method `underlying` (unlike MErc20) therefore we handle it differently
  if (marketAddress == mMovrAddress) {
    market.underlyingAddress = '0x0000000000000000000000000000000000000000'
    market.underlyingDecimals = 18
    market.underlyingPrice = BigDecimal.fromString('1')
    market.underlyingName = 'MOVR'
    market.underlyingSymbol = 'MOVR'
    market.underlyingPriceUSD = zeroBD
  } else {
    let underlyingContract = ERC20.bind(contract.underlying())
    market.underlyingAddress = contract.underlying().toHexString()
    market.underlyingDecimals = underlyingContract.decimals()
    market.underlyingName = underlyingContract.name()
    market.underlyingSymbol = underlyingContract.symbol()
    market.underlyingPriceUSD = zeroBD
    market.underlyingPrice = zeroBD
  }

  let interestRateModelAddress = contract.try_interestRateModel()
  let reserveFactor = contract.try_reserveFactorMantissa()

  market.borrowRate = zeroBD
  market.cash = zeroBD
  market.collateralFactor = zeroBD
  market.exchangeRate = zeroBD
  market.interestRateModelAddress = interestRateModelAddress.reverted
    ? '0x0000000000000000000000000000000000000000'
    : interestRateModelAddress.value.toHexString()
  market.name = contract.name()
  market.reserves = zeroBD
  market.supplyRate = zeroBD
  market.symbol = contract.symbol()
  market.totalBorrows = zeroBD
  market.totalSupply = zeroBD

  market.accrualBlockTimestamp = 0
  market.blockTimestamp = 0
  market.borrowIndex = zeroBD
  market.reserveFactor = reserveFactor.reverted ? BigInt.fromI32(0) : reserveFactor.value

  return market
}

function getETHinUSD(): BigDecimal {
  let comptroller = getOrCreateComptroller()
  let oracleAddress = Address.fromString(comptroller.priceOracle)
  let oracle = PriceOracle2.bind(oracleAddress)
  let tryPrice = oracle.try_getUnderlyingPrice(Address.fromString(mMovrAddress))

  let ethPriceInUSD = tryPrice.reverted
    ? zeroBD
    : tryPrice.value.toBigDecimal().div(mantissaFactorBD)

  return ethPriceInUSD
}

export function updateMarket(marketAddress: Address, blockTimestamp: i32): Market {
  let marketID = marketAddress.toHexString()
  let market = Market.load(marketID)
  if (market == null) {
    market = createMarket(marketID)
  }

  // Only updateMarket if it has not been updated this block
  if (market.accrualBlockTimestamp != blockTimestamp) {
    let contractAddress = Address.fromString(market.id)
    let contract = CToken.bind(contractAddress)

    let ethPriceInUSD = getETHinUSD()

    // if cETH, we only update USD price
    if (market.id == mMovrAddress) {
      market.underlyingPriceUSD = ethPriceInUSD.truncate(market.underlyingDecimals)
    } else {
      let tokenPriceUSD = getTokenPrice(contractAddress, market.underlyingDecimals)
      market.underlyingPrice = tokenPriceUSD
        .div(ethPriceInUSD)
        .truncate(market.underlyingDecimals)
      market.underlyingPriceUSD = tokenPriceUSD.truncate(market.underlyingDecimals)
    }

    market.accrualBlockTimestamp = contract.accrualBlockTimestamp().toI32()
    market.blockTimestamp = blockTimestamp
    market.totalSupply = contract.totalSupply().toBigDecimal().div(cTokenDecimalsBD)

    /* Exchange rate explanation
       In Practice
        - If you call the cDAI contract on etherscan it comes back (2.0 * 10^26)
        - If you call the cUSDC contract on etherscan it comes back (2.0 * 10^14)
        - The real value is ~0.02. So cDAI is off by 10^28, and cUSDC 10^16
       How to calculate for tokens with different decimals
        - Must div by tokenDecimals, 10^market.underlyingDecimals
        - Must multiply by ctokenDecimals, 10^8
        - Must div by mantissa, 10^18
     */
    market.exchangeRate = contract
      .exchangeRateStored()
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .times(cTokenDecimalsBD)
      .div(mantissaFactorBD)
      .truncate(mantissaFactor)
    market.borrowIndex = contract
      .borrowIndex()
      .toBigDecimal()
      .div(mantissaFactorBD)
      .truncate(mantissaFactor)

    market.reserves = contract
      .totalReserves()
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals)
    market.totalBorrows = contract
      .totalBorrows()
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals)
    market.cash = contract
      .getCash()
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals)

    // rough estimation based on https://moonriver.moonscan.io/chart/blocks
    let blocksPerYear = 365 * 3600

    // Must convert to BigDecimal, and remove 10^18 that is used for Exp in Compound Solidity
    market.borrowRate = contract
      .borrowRatePerTimestamp()
      .toBigDecimal()
      .times(BigInt.fromI32(blocksPerYear).toBigDecimal())
      .div(mantissaFactorBD)
      .truncate(mantissaFactor)

    // This fails on only the first call to cZRX. It is unclear why, but otherwise it works.
    // So we handle it like this.
    let supplyRatePerBlock = contract.try_supplyRatePerTimestamp()
    if (supplyRatePerBlock.reverted) {
      log.info('***CALL FAILED*** : cERC20 supplyRatePerBlock() reverted', [])
      market.supplyRate = zeroBD
    } else {
      market.supplyRate = supplyRatePerBlock.value
        .toBigDecimal()
        .times(BigInt.fromI32(blocksPerYear).toBigDecimal())
        .div(mantissaFactorBD)
        .truncate(mantissaFactor)
    }
    market.save()
  }
  return market
}
