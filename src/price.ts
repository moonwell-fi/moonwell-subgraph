import { Comptroller } from '../generated/schema'
import { AnswerUpdated } from '../generated/templates/Feed/Feed'
import { Market } from '../generated/schema'
import { Address, BigDecimal, ethereum, log } from '@graphprotocol/graph-ts'
import { PriceOracle } from '../generated/templates/CToken/PriceOracle'
import { addrEq, exponentToBigDecimal, zeroBD } from './helpers'
import config from '../config/config'
import { Feed } from '../generated/templates'

// Special handler that hardcodes _feed for certain market at a certain block.
// This is necessary because Chainlink could change mtoken feed address through private transaction
// and without emitting any events.
//
// An example: MOVR feed address was changed from 0xc9228b26d5b40e7d547aac86f05da912e42205c7
// to 0x090ef17e7fff9abb3bff40f9b75bd5e08d4fb87c privately at block 2536028.
// As a work around we change _feed from 0xc9228b26d5b40e7d547aac86f05da912e42205c7
// to 0x090ef17e7fff9abb3bff40f9b75bd5e08d4fb87c at block 2536028.
export function handleBlock(block: ethereum.Block): void {
  for (let i = 0; i < config.oracleOverrides.length; i++) {
    let oracleOverride = config.oracleOverrides[i]

    if (block.number.toI32() == oracleOverride.blockNumber) {
      let market = Market.load(Address.fromString(oracleOverride.mtoken).toHexString())
      if (!market) {
        log.warning('[handleBlock] market {} not found', [oracleOverride.mtoken])
        continue
      }

      let newFeed = Address.fromString(oracleOverride.newFeed)
      market._feed = newFeed.toHexString()
      market.save()

      Feed.create(newFeed)
    }
  }
}

// Update market price when feed contract emits AnswerUpdated
// Compared to updating market price only when users interact with a market
// This ensures more up-to-date price hence more accurate liquidation monitoring
export function handleAnswerUpdated(event: AnswerUpdated): void {
  let feed = event.address.toHexString()
  let comptroller = Comptroller.load('1')!
  let markets: Market[] = []
  for (let i = 0; i < comptroller._markets.length; i++) {
    let marketID = comptroller._markets[i]
    let market = Market.load(marketID)
    if (!market) {
      log.warning('[handleAnswerUpdated] market {} not found', [marketID])
      continue
    }
    if (market._feed == feed) {
      markets.push(market)
    }
  }

  if (markets.length === 0) {
    log.warning('[handleAnswerUpdated] relevant market not found for feed {}', [feed])
    return
  }

  for (let i = 0; i < markets.length; i++) {
    let market = markets[i]
    // update price of the market
    let underlyingTokenPriceUSD = getTokenPrice(
      Address.fromString(market.id),
      market.underlyingDecimals,
    )
    market.underlyingPriceUSD = underlyingTokenPriceUSD
    if (!addrEq(market.id, config.mNativeAddr)) {
      let nativeTokenPriceUSD = getTokenPrice(Address.fromString(config.mNativeAddr), 18)
      if (nativeTokenPriceUSD.ge(zeroBD)) {
        market.underlyingPrice = underlyingTokenPriceUSD.div(nativeTokenPriceUSD)
      }
    }
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
