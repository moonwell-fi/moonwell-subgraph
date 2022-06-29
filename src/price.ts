import { Comptroller } from '../generated/schema'
import { AnswerUpdated } from '../generated/templates/Feed/Feed'
import { Market } from '../generated/schema'
import { Address, BigDecimal, log } from '@graphprotocol/graph-ts'
import { PriceOracle } from '../generated/templates/CToken/PriceOracle'
import { addrEq, exponentToBigDecimal, zeroBD } from './helpers'
import { mNativeAddr } from './constants'

// Update market price when feed contract emits AnswerUpdated
// Compared to updating market price only when users interact with a market
// This ensures more up-to-date price hence more accurate liquidation monitoring
export function handleAnswerUpdated(event: AnswerUpdated): void {
  let feed = event.address.toHexString()
  let comptroller = Comptroller.load('1')!
  let market: Market | null = null
  for (let i = 0; i < comptroller._markets.length; i++) {
    let marketID = comptroller._markets[i]
    let _market = Market.load(marketID)
    if (!_market) {
      log.warning('[handleAnswerUpdated] market {} not found', [marketID])
      continue
    }
    if (_market._feed == feed) {
      market = _market
      break
    }
  }
  if (!market) {
    log.warning('[handleAnswerUpdated] relevant market not found for feed {}', [feed])
    return
  }

  // update price of the market
  let underlyingTokenPriceUSD = getTokenPrice(
    Address.fromString(market.id),
    market.underlyingDecimals,
  )
  market.underlyingPriceUSD = underlyingTokenPriceUSD
  if (!addrEq(market.id, mNativeAddr)) {
    let nativeTokenPriceUSD = getTokenPrice(Address.fromString(mNativeAddr), 18)
    if (nativeTokenPriceUSD.ge(zeroBD)) {
      market.underlyingPrice = underlyingTokenPriceUSD.div(nativeTokenPriceUSD)
    }
  }
  market.save()
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
