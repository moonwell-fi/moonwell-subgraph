// For each division by 10, add one to exponent to truncate one significant figure
import { Address, BigDecimal, BigInt, log } from '@graphprotocol/graph-ts'
import { Market, Comptroller } from '../../generated/schema'
// PriceOracle2 is valid from 8498422 until present block (until another proxy upgrade)
import { PriceOracle2 } from '../../generated/templates/CToken/PriceOracle2'
import { ERC20 } from '../../generated/templates/CToken/ERC20'
import { CToken } from '../../generated/templates/CToken/CToken'

import {
  exponentToBigDecimal,
  mantissaFactor,
  mantissaFactorBD,
  cTokenDecimalsBD,
  zeroBD,
} from './helpers'

let mMovrAddress = '0x6a1a771c7826596652dadc9145feaae62b1cd07f'

// Used for all cERC20 contracts
function getTokenPrice(eventAddress: Address, underlyingDecimals: i32): BigDecimal {
  let comptroller = Comptroller.load('1')!
  let oracleAddress = Address.fromString(comptroller.priceOracle!)
  let underlyingPrice: BigDecimal

  /* PriceOracle2 is used at the block the Comptroller starts using it.
   * see here https://etherscan.io/address/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b#events
   * Search for event topic 0xd52b2b9b7e9ee655fcb95d2e5b9e0c9f69e7ef2b8e9d2d0ea78402d576d22e22,
   * and see block 7715908.
   *
   * This must use the cToken address.
   *
   * Note this returns the value without factoring in token decimals and wei, so we must divide
   * the number by (ethDecimals - tokenDecimals) and again by the mantissa.
   * USDC would be 10 ^ ((18 - 6) + 18) = 10 ^ 30
   *
   * Note that they deployed 3 different PriceOracles at the beginning of the Comptroller,
   * and that they handle the decimals different, which can break the subgraph. So we actually
   * defer to Oracle 1 before block 7715908, which works,
   * until this one is deployed, which was used for 121 days */
  let mantissaDecimalFactor = 18 - underlyingDecimals + 18
  let bdFactor = exponentToBigDecimal(mantissaDecimalFactor)
  let oracle2 = PriceOracle2.bind(oracleAddress)
  let tryPrice = oracle2.try_getUnderlyingPrice(eventAddress)

  underlyingPrice = tryPrice.reverted
    ? zeroBD
    : tryPrice.value.toBigDecimal().div(bdFactor)

  /* PriceOracle(1) is used (only for the first ~100 blocks of Comptroller. Annoying but we must
   * handle this. We use it for more than 100 blocks, see reason at top of if statement
   * of PriceOracle2.
   *
   * This must use the token address, not the cToken address.
   *
   * Note this returns the value already factoring in token decimals and wei, therefore
   * we only need to divide by the mantissa, 10^18 */

  return underlyingPrice
}

export function createMarket(marketAddress: string): Market {
  let market: Market
  let contract = CToken.bind(Address.fromString(marketAddress))

  // It is CETH, which has a slightly different interface
  if (marketAddress == mMovrAddress) {
    market = new Market(marketAddress)
    market.underlyingAddress = '0x0000000000000000000000000000000000000000'
    market.underlyingDecimals = 18
    market.underlyingPrice = BigDecimal.fromString('1')
    market.underlyingName = 'MOVR'
    market.underlyingSymbol = 'MOVR'
    market.underlyingPriceUSD = zeroBD
  } else {
    market = new Market(marketAddress)
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

// Only to be used after block 10678764, since it's aimed to fix the change to USD based price oracle.
function getETHinUSD(): BigDecimal {
  let comptroller = Comptroller.load('1')!
  let oracleAddress = Address.fromString(comptroller.priceOracle!)
  let oracle = PriceOracle2.bind(oracleAddress)
  let tryPrice = oracle.try_getUnderlyingPrice(Address.fromString(mMovrAddress))

  let ethPriceInUSD = tryPrice.reverted
    ? zeroBD
    : tryPrice.value.toBigDecimal().div(mantissaFactorBD)

  return ethPriceInUSD
}

export function updateMarket(
  marketAddress: Address,
  blockTimestamp: i32,
): Market {
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
  return market as Market
}
