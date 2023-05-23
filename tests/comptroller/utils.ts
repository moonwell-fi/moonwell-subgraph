import { newMockEvent, newMockEventWithParams } from "matchstick-as/assembly/index"
import { Address, ethereum, Bytes, BigInt, BigDecimal } from "@graphprotocol/graph-ts"

import { 
  Comptroller,
  Market,
  Account,
} from "../../generated/schema"

import { MarketListed } from "../../generated/Comptroller/Comptroller"
import {
  Mint,
  Transfer,
  Redeem,
  Borrow,
  RepayBorrow,
} from "../../generated/templates/CToken/CToken"

import { handleMarketListed } from "../../src/comptroller"

import {
  handleMint,
  handleTransfer,
  handleRedeem,
  handleBorrow,
  handleRepayBorrow,
} from "../../src/ctoken"

import { zeroBD, oneBD, zeroBI, zeroAddress  } from "../../src/helpers"

export const ADDRESS_ZERO = '0x0000000000000000000000000000000000000000'
export const ZERO_ADDRESS = ADDRESS_ZERO

export function saveComptroller(): void {
  let comptroller = Comptroller.load('1')
  if (!comptroller) {
    comptroller = new Comptroller('1')
    comptroller.priceOracle = "0x892be716dcf0a6199677f355f45ba8cc123baf60"
    comptroller.liquidationIncentive = BigDecimal.fromString("1.1")
    comptroller.closeFactor = BigDecimal.fromString("0.5")
    comptroller._markets = []
  }
  comptroller.save()
}

export function saveMarket(address: string, name: string, symbol: string, underlyingAddress: string, interestRateModelAddress: string, feedAddress: string): void {
  let market = Market.load(address)
  if (!market) {
    market = new Market(address)
    market.id = address.toString()
    market.name = name
    market.symbol = symbol
    market.underlyingAddress = underlyingAddress
    market.underlyingName = name
    market.underlyingPrice = oneBD
    market.underlyingPriceUSD = oneBD
    market.underlyingSymbol = symbol
    market.underlyingDecimals = 18
    market.totalBorrows = zeroBD
    market.totalSupply = zeroBD
    market.reserves = zeroBD
    market.cash = zeroBD
    market.supplyRate = zeroBD
    market.borrowRate = zeroBD
    market.collateralFactor = zeroBD
    market.exchangeRate = zeroBD
    market.borrowIndex = zeroBI
    market.borrowRewardSpeedNative = zeroBI
    market.supplyRewardSpeedNative = zeroBI
    market.borrowRewardSpeedProtocol = zeroBI
    market.supplyRewardSpeedProtocol = zeroBI
    market.borrowRewardNative = zeroBD
    market.borrowRewardProtocol = zeroBD
    market.supplyRewardNative = zeroBD
    market.supplyRewardProtocol = zeroBD
    market.borrowRewardStateNativeIndex = zeroBI
    market.borrowRewardStateNativeTimestamp = 0
    market.borrowRewardStateProtocolTimestamp = 0
    market.supplyRewardStateNativeTimestamp = 0
    market.supplyRewardStateProtocolTimestamp = 0
    market.supplyRewardStateNativeIndex = zeroBI
    market.borrowRewardStateProtocolIndex = zeroBI
    market.supplyRewardStateProtocolIndex = zeroBI
    market.borrowCap = zeroBI
    market.reserveFactor = zeroBI
    market.accrualBlockTimestamp = 0
    market.blockTimestamp = 0
    market.interestRateModelAddress = interestRateModelAddress
    market.borrowerCount = 0
    market.supplierCount = 0
    market.mintPaused = false
    market.borrowPaused = false
    market._feed = feedAddress
  }
  market.save()
}

export function saveAccount(address: string): void {
  let account = Account.load(address)
  if (!account) {
    account = new Account(address)
    account.tokens = []
    account.countLiquidated = 0
    account.countLiquidator = 0
    account.hasBorrowed = false
  }
  account.save()
}

export function createMarketListedEvent(address: string): MarketListed {
  let newMarketListed = changetype<MarketListed>(newMockEvent());
  newMarketListed.parameters = new Array();
  let mTokenParam = new ethereum.EventParam("mToken", ethereum.Value.fromAddress(Address.fromString(address)));

  newMarketListed.parameters.push(mTokenParam);
  return newMarketListed;
}

export function handleMarketListeds(events: MarketListed[]): void {
  events.forEach(event => {
    handleMarketListed(event)
  })
}

export function createNewMintEvent(from: string, to: string, amount: BigInt, hash: string): Mint {
  let minterParam = new ethereum.EventParam("minter", ethereum.Value.fromAddress(Address.fromString(from)));
  let mintAmountParam = new ethereum.EventParam("mintAmount", ethereum.Value.fromUnsignedBigInt(amount));
  let mintTokensParam = new ethereum.EventParam("mintTokens", ethereum.Value.fromUnsignedBigInt(amount));

  let newMint = changetype<Mint>(newMockEventWithParams([minterParam, mintAmountParam, mintTokensParam]));
  newMint.address = Address.fromString(to); // Set the address of the event to the mToken address
  newMint.transaction.hash = Bytes.fromHexString(hash) as Bytes; // Set the hash of the transaction
  return newMint;
}

export function handleNewMints(events: Mint[]): void {
  events.forEach(event => {
    handleMint(event)
  })
}

export function createNewTransferEvent(market: string, from: string, to: string, amount: BigInt, hash: string): Transfer {
  let fromParam = new ethereum.EventParam("from", ethereum.Value.fromAddress(Address.fromString(from)));
  let toParam = new ethereum.EventParam("to", ethereum.Value.fromAddress(Address.fromString(to)));
  let amountParam = new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount));

  let newTransfer = changetype<Transfer>(newMockEventWithParams([fromParam, toParam, amountParam]));
  newTransfer.address = Address.fromString(market); // Set the address of the event to the mToken address
  newTransfer.transaction.hash = Bytes.fromHexString(hash) as Bytes; // Set the hash of the transaction
  return newTransfer;
}

export function handleNewTransfers(events: Transfer[]): void {
  events.forEach(event => {
    handleTransfer(event)
  })
}

export function createNewRedeemEvent(from: string, to: string, amount: BigInt, hash: string): Redeem {
  let redeemerParam = new ethereum.EventParam("redeemer", ethereum.Value.fromAddress(Address.fromString(from)));
  let redeemAmountParam = new ethereum.EventParam("redeemAmount", ethereum.Value.fromUnsignedBigInt(amount));
  let redeemTokensParam = new ethereum.EventParam("redeemTokens", ethereum.Value.fromUnsignedBigInt(amount));

  let newRedeem = changetype<Redeem>(newMockEventWithParams([redeemerParam, redeemAmountParam, redeemTokensParam]));
  newRedeem.address = Address.fromString(to); // Set the address of the event to the mToken address
  newRedeem.transaction.hash = Bytes.fromHexString(hash) as Bytes; // Set the hash of the transaction
  return newRedeem;
}

export function handleNewRedeems(events: Redeem[]): void {
  events.forEach(event => {
    handleRedeem(event)
  })
}

export function createNewBorrowEvent(
  borrower: string,
  borrowAmount: BigInt,
  accountBorrows: BigInt,
  totalBorrows: BigInt,
  marketAddress: string,
  hash: string
): Borrow {
  let borrowerParam = new ethereum.EventParam("borrower", ethereum.Value.fromAddress(Address.fromString(borrower)));
  let borrowAmountParam = new ethereum.EventParam("borrowAmount", ethereum.Value.fromUnsignedBigInt(borrowAmount));
  let accountBorrowsParam = new ethereum.EventParam("accountBorrows", ethereum.Value.fromUnsignedBigInt(accountBorrows));
  let totalBorrowsParam = new ethereum.EventParam("totalBorrows", ethereum.Value.fromUnsignedBigInt(totalBorrows));

  let newBorrow = changetype<Borrow>(
    newMockEventWithParams([borrowerParam, borrowAmountParam, accountBorrowsParam, totalBorrowsParam])
  );
  newBorrow.address = Address.fromString(marketAddress);
  newBorrow.transaction.hash = Bytes.fromHexString(hash) as Bytes;
  return newBorrow;
}

export function handleNewBorrows(events: Borrow[]): void {
  events.forEach(event => {
    handleBorrow(event);
  });
}

export function createNewRepayBorrowEvent(
  payer: string,
  borrower: string,
  repayAmount: BigInt,
  accountBorrows: BigInt,
  totalBorrows: BigInt,
  marketAddress: string,
  hash: string
): RepayBorrow {
  let payerParam = new ethereum.EventParam("payer", ethereum.Value.fromAddress(Address.fromString(payer)));
  let borrowerParam = new ethereum.EventParam("borrower", ethereum.Value.fromAddress(Address.fromString(borrower)));
  let repayAmountParam = new ethereum.EventParam("repayAmount", ethereum.Value.fromUnsignedBigInt(repayAmount));
  let accountBorrowsParam = new ethereum.EventParam("accountBorrows", ethereum.Value.fromUnsignedBigInt(accountBorrows));
  let totalBorrowsParam = new ethereum.EventParam("totalBorrows", ethereum.Value.fromUnsignedBigInt(totalBorrows));

  let newRepayBorrow = changetype<RepayBorrow>(
    newMockEventWithParams([payerParam, borrowerParam, repayAmountParam, accountBorrowsParam, totalBorrowsParam])
  );
  newRepayBorrow.address = Address.fromString(marketAddress);
  newRepayBorrow.transaction.hash = Bytes.fromHexString(hash) as Bytes;
  return newRepayBorrow;
}

export function handleNewRepayBorrows(events: RepayBorrow[]): void {
  events.forEach(event => {
    handleRepayBorrow(event);
  });
}
