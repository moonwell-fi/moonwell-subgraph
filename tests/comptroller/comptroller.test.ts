import { describe, test, beforeAll, assert, createMockedFunction, clearStore } from "matchstick-as/assembly/index"
import { Address, BigInt, ethereum } from "@graphprotocol/graph-ts";
import { Comptroller } from "../../generated/Comptroller/Comptroller";
import { CToken  } from "../../generated/Comptroller/CToken";
import { Market } from "../../generated/schema";
import { PriceOracle } from "../../generated/Comptroller/PriceOracle";
import { ERC20 } from "../../generated/Comptroller/ERC20";
import { FeedProxy } from "../../generated/Comptroller/FeedProxy";

import { 
  saveComptroller,
  saveAccount,
  createMarketListedEvent,
  handleMarketListeds,
  createNewMintEvent,
  handleNewMints,
  createNewTransferEvent,
  handleNewTransfers,
  createNewRedeemEvent,
  handleNewRedeems,
  createNewBorrowEvent,
  handleNewBorrows,
  createNewRepayBorrowEvent,
  handleNewRepayBorrows,
  ZERO_ADDRESS,
} from "./utils";

import {
  exponentToBigDecimal,
  cTokenDecimalsBD,
  cTokenDecimals,
  zeroBI,
} from "../../src/helpers"

let comptrollerAddress = Address.fromString("0x0b7a0EAA884849c6Af7a129e899536dDDcA4905E")
let expectedPriceOracle=Address.fromString("0x892be716dcf0a6199677f355f45ba8cc123baf60")
let expectedInterestRateModel="0x31976dc2ea27e75cc5a3687ed594d17127f9b72e".toLowerCase()
let expectedReserveFactorMantissa=BigInt.fromString("250000000000000000")
let expectedMovrFeed="0x3f8BFbDc1e79777511c00Ad8591cef888C2113C1".toLowerCase()
let expectedXcksmFeed="0x6e0513145FCE707Cd743528DB7C1cAB537DE9d1B".toLowerCase()
let expectedMovrAggregator="0x090ef17e7fff9abb3bff40f9b75bd5e08d4fb87c".toLowerCase()
let expectedXcksmAggregator="0x394cfc87d791e02eea552726228ad29680df6092".toLowerCase()
let movrMarketAddress = "0x6a1A771C7826596652daDC9145fEAaE62b1cd07f".toLowerCase()
let movrMarketSymbol = "mMOVR"
let xcksmMarketAddress = "0xa0d116513bd0b8f3f14e6ea41556c6ec34688e0f".toLowerCase()
let xcksmContractAddress="0xffffffff1fcacbd218edc0eba20fc2308c778080".toLowerCase()
let xcksmMarketSymbol = "mxcKSM"
let testAccountAddress1 = "0x" + "1".repeat(40)
let testAccountAddress2 = "0x" + "2".repeat(40)

test("Should throw an error", () => {
  throw new Error()
}, true)

describe("Mock contract functions", () => {
  beforeAll(() => {
    clearStore()
  })

  test("Can mock and call function with different argument types", () => {
    let numValue = ethereum.Value.fromI32(152)
    let stringValue = ethereum.Value.fromString("example string value")
    let arrayValue = ethereum.Value.fromI32Array([156666, 123412])
    let booleanValue = ethereum.Value.fromBoolean(true)
    let objectValue = ethereum.Value.fromAddress(Address.fromString("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"))
    let tupleArray: Array<ethereum.Value> = [ethereum.Value.fromI32(152), ethereum.Value.fromString("string value")]
    let tuple = changetype<ethereum.Tuple>(tupleArray)
    let tupleValue = ethereum.Value.fromTuple(tuple)

    let argsArray: Array<ethereum.Value> = [numValue, stringValue, arrayValue, booleanValue, objectValue, tupleValue]
    createMockedFunction(Address.fromString("0x90cBa2Bbb19ecc291A12066Fd8329D65FA1f1947"), "funcName", "funcName(int32, string, int32[], bool, address, (int32, string)):(void)")
      .withArgs(argsArray)
      .returns([ethereum.Value.fromString("result")])
    let val = ethereum.call(new ethereum.SmartContractCall("conName", Address.fromString("0x90cBa2Bbb19ecc291A12066Fd8329D65FA1f1947"), "funcName", "funcName(int32, string, int32[], bool, address, (int32, string)):(void)", argsArray))![0]

    assert.equals(ethereum.Value.fromString("result"), val)
  })

  test("Can test if mocked function reverts", () => {
    createMockedFunction(Address.fromString("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"), "revertedFunction", "revertedFunction():(void)").reverts()
    let val = ethereum.call(new ethereum.SmartContractCall("conName", Address.fromString("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"), "revertedFunction", "revertedFunction():(void)", []))

    assert.assertNull(val)
  })

  test ("Can mock the oracle function correctly", () => {
    
    createMockedFunction(comptrollerAddress, "oracle", "oracle():(address)")
      .returns([ethereum.Value.fromAddress(expectedPriceOracle)])

    let comptroller = Comptroller.bind(comptrollerAddress)
    let oracleResult = comptroller.oracle()

    assert.addressEquals(expectedPriceOracle, oracleResult)
  })

  test ("Can mock the liquidationIncentiveMantissa function correctly", () => {
    let expectedLiquidationIncentive=BigInt.fromString("1100000000000000000")
    createMockedFunction(comptrollerAddress, "liquidationIncentiveMantissa", "liquidationIncentiveMantissa():(uint256)")
      .returns([ethereum.Value.fromUnsignedBigInt(BigInt.fromString("1100000000000000000"))])

    let comptroller = Comptroller.bind(comptrollerAddress)
    let liquidationIncentiveResult = comptroller.liquidationIncentiveMantissa()

    assert.bigIntEquals(expectedLiquidationIncentive, liquidationIncentiveResult)
  })

  test ("Can mock the closeFactorMantissa function correctly", () => {
    let expectedCloseFactor=BigInt.fromString("500000000000000000")
    createMockedFunction(comptrollerAddress, "closeFactorMantissa", "closeFactorMantissa():(uint256)")
      .returns([ethereum.Value.fromUnsignedBigInt(BigInt.fromString("500000000000000000"))])

    let comptroller = Comptroller.bind(comptrollerAddress)
    let closeFactorResult = comptroller.closeFactorMantissa()

    assert.bigIntEquals(expectedCloseFactor, closeFactorResult)
  })

  test ("Can mock the mMOVR interestRateModel function correctly", () => {
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "interestRateModel", "interestRateModel():(address)"
    )
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedInterestRateModel))])

    let market = CToken.bind(Address.fromString(movrMarketAddress))
    let interestRateModelResult = market.interestRateModel()

    assert.addressEquals(Address.fromString(expectedInterestRateModel), interestRateModelResult)
  })

  test ("Can mock the mMOVR reserveFactorMantissa function correctly", () => {
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "reserveFactorMantissa", "reserveFactorMantissa():(uint256)"
    )
      .returns([ethereum.Value.fromUnsignedBigInt(expectedReserveFactorMantissa)])

    let market = CToken.bind(Address.fromString(movrMarketAddress))
    let reserveFactorMantissaResult = market.reserveFactorMantissa()

    assert.bigIntEquals(expectedReserveFactorMantissa, reserveFactorMantissaResult)
  })

  test ("Can mock the mMOVR name function correctly", () => {
    let expectedName="Moonwell MOVR"
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "name", "name():(string)"
    )
      .returns([ethereum.Value.fromString(expectedName)])

    let market = CToken.bind(Address.fromString(movrMarketAddress))
    let nameResult = market.name()

    assert.stringEquals(expectedName, nameResult)
  })

  test ("Can mock the mMOVR symbol function correctly", () => {
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "symbol", "symbol():(string)"
    )
      .returns([ethereum.Value.fromString(movrMarketSymbol)])

    let market = CToken.bind(Address.fromString(movrMarketAddress))
    let symbolResult = market.symbol()

    assert.stringEquals(movrMarketSymbol, symbolResult)
  })

  test ("Can mock the PriceOracle getFeed functions for mMOVR and mxcKSM correctly", () => {
    createMockedFunction(
      expectedPriceOracle,
      "getFeed", "getFeed(string):(address)"
    )
      .withArgs([ethereum.Value.fromString("mMOVR")])
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedMovrFeed))])

    createMockedFunction(
      expectedPriceOracle,
      "getFeed", "getFeed(string):(address)"
    )
      .withArgs([ethereum.Value.fromString("xcKSM")])
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedXcksmFeed))])

    let oracle = PriceOracle.bind(expectedPriceOracle)
    let movrFeedResult = oracle.getFeed("mMOVR")
    assert.addressEquals(Address.fromString(expectedMovrFeed), movrFeedResult)
    let xcksmFeedResult = oracle.getFeed("xcKSM")
    assert.addressEquals(Address.fromString(expectedXcksmFeed), xcksmFeedResult)
  })

  test ("Can mock the MOVR and xcKSM Chainlink feed aggregator function correctly", () => {
    createMockedFunction(
      expectedPriceOracle,
      "aggregator", "aggregator():(address)"
    )
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedMovrAggregator))])

    createMockedFunction(
      Address.fromString(expectedMovrFeed),
      "aggregator", "aggregator():(address)"
    )
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedMovrAggregator))])

    createMockedFunction(
      Address.fromString(expectedXcksmFeed),
      "aggregator", "aggregator():(address)"
    )
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedXcksmAggregator))])

    let chainlinkMovrFeed = FeedProxy.bind(expectedPriceOracle)
    let aggregatorResult = chainlinkMovrFeed.aggregator()
    assert.addressEquals(Address.fromString(expectedMovrAggregator), aggregatorResult)
    let chainlinkKsmFeed = FeedProxy.bind(Address.fromString(expectedXcksmFeed))
    aggregatorResult = chainlinkKsmFeed.aggregator()
    assert.addressEquals(Address.fromString(expectedXcksmAggregator), aggregatorResult)
  })

  test ("Can mock the mxcKSM interestRateModel function correctly", () => {
    createMockedFunction(
      Address.fromString(xcksmMarketAddress),
      "interestRateModel", "interestRateModel():(address)"
    )
      .returns([ethereum.Value.fromAddress(Address.fromString(expectedInterestRateModel))])

    let market = CToken.bind(Address.fromString(xcksmMarketAddress))
    let interestRateModelResult = market.interestRateModel()

    assert.addressEquals(Address.fromString(expectedInterestRateModel), interestRateModelResult)
  })

  test ("Can mock the mxcKSM reserveFactorMantissa function correctly", () => {
    createMockedFunction(
      Address.fromString(xcksmMarketAddress),
      "reserveFactorMantissa", "reserveFactorMantissa():(uint256)"
    )
      .returns([ethereum.Value.fromUnsignedBigInt(expectedReserveFactorMantissa)])

    let market = CToken.bind(Address.fromString(xcksmMarketAddress))
    let reserveFactorMantissaResult = market.reserveFactorMantissa()

    assert.bigIntEquals(expectedReserveFactorMantissa, reserveFactorMantissaResult)
  })

  test ("Can mock the mxcKSM name function correctly", () => {
    let expectedName="Moonwell Kusama"
    createMockedFunction(
      Address.fromString(xcksmMarketAddress),
      "name", "name():(string)"
    )
      .returns([ethereum.Value.fromString(expectedName)])

    let market = CToken.bind(Address.fromString(xcksmMarketAddress))
    let nameResult = market.name()

    assert.stringEquals(expectedName, nameResult)
  })

  test ("Can mock the mxcKSM symbol function correctly", () => {
    let expectedSymbol="mxcKSM"
    createMockedFunction(
      Address.fromString(xcksmMarketAddress),
      "symbol", "symbol():(string)"
    )
      .returns([ethereum.Value.fromString(expectedSymbol)])

    let market = CToken.bind(Address.fromString(xcksmMarketAddress))
    let symbolResult = market.symbol()

    assert.stringEquals(expectedSymbol, symbolResult)
  })

  test ("Can mock the mxcKSM underlying function correctly", () => {
    let expectedUnderlying=Address.fromString("0xffffffff1fcacbd218edc0eba20fc2308c778080")
    createMockedFunction(
      Address.fromString(xcksmMarketAddress),
      "underlying", "underlying():(address)"
    )
      .returns([ethereum.Value.fromAddress(expectedUnderlying)])

    let market = CToken.bind(Address.fromString(xcksmMarketAddress))
    let underlyingResult = market.underlying()

    assert.addressEquals(expectedUnderlying, underlyingResult)
  })

  test ("Can mock the xcKSM ERC20 decimals function correctly", () => {
    let expectedDecimals = 12
    createMockedFunction(
      Address.fromString(xcksmContractAddress),
      "decimals", "decimals():(uint8)"
    )
      .returns([ethereum.Value.fromI32(expectedDecimals)])

    let token = ERC20.bind(Address.fromString(xcksmContractAddress))
    let decimalsResult = token.decimals()

    assert.i32Equals(expectedDecimals, decimalsResult)
  })

  test ("Can mock the xcKSM ERC20 name function correctly", () => {
    let expectedName="xcKSM"
    createMockedFunction(
      Address.fromString(xcksmContractAddress),
      "name", "name():(string)"
    )
      .returns([ethereum.Value.fromString(expectedName)])

    let token = ERC20.bind(Address.fromString(xcksmContractAddress))
    let nameResult = token.name()

    assert.stringEquals(expectedName, nameResult)
  })

  test ("Can mock the xcKSM ERC20 symbol function correctly", () => {
    let expectedSymbol="xcKSM"
    createMockedFunction(
      Address.fromString(xcksmContractAddress),
      "symbol", "symbol():(string)"
    )
      .returns([ethereum.Value.fromString(expectedSymbol)])

    let token = ERC20.bind(Address.fromString(xcksmContractAddress))
    let symbolResult = token.symbol()

    assert.stringEquals(expectedSymbol, symbolResult)
  })
})

describe("Create Comptroller, MOVR + xcKSM markets, and accounts with mock events tests", () => {
  beforeAll(() => {
    clearStore()
  })

  test ("Should create a Comptroller", () => {
    assert.entityCount("Comptroller", 0) // There should be no comptrollers yet
    saveComptroller()
    assert.entityCount("Comptroller", 1) // There should be one comptroller now
    assert.fieldEquals("Comptroller", "1", "id", "1") // The comptroller should have id 1
  })

  test ("Should create the MOVR Market", () => {
    assert.entityCount("Market", 0) // There should be no markets yet
    let newMarketListed = createMarketListedEvent(movrMarketAddress)
    handleMarketListeds([newMarketListed])
    assert.entityCount("Market", 1) // There should be one market now
    assert.fieldEquals("Market", movrMarketAddress, "id", movrMarketAddress)
  })

  test ("The MOVR Market should have the correct values", () => {
    let expectedMarketName = "Moonwell MOVR"
    let expectedMarketUnderlying = ZERO_ADDRESS
    assert.fieldEquals("Market", movrMarketAddress, "underlyingAddress", expectedMarketUnderlying)
    assert.fieldEquals("Market", movrMarketAddress, "name", expectedMarketName)
    assert.fieldEquals("Market", movrMarketAddress, "symbol", movrMarketSymbol)
    assert.fieldEquals("Market", movrMarketAddress, "interestRateModelAddress", expectedInterestRateModel)
    assert.fieldEquals("Market", movrMarketAddress, "_feed", expectedMovrAggregator)
  })

  test ("Should create the xcKSM Market", () => {
    assert.entityCount("Market", 1) // There should one market
    let newMarketListed = createMarketListedEvent(xcksmMarketAddress)
    handleMarketListeds([newMarketListed])
    assert.entityCount("Market", 2) // There should be two markets now
    assert.fieldEquals("Market", xcksmMarketAddress, "id", xcksmMarketAddress)
  })

  test ("The xcKSM Market should have the correct values", () => {
    let expectedMarketName = "Moonwell Kusama"
    assert.fieldEquals("Market", xcksmMarketAddress, "underlyingAddress", xcksmContractAddress)
    assert.fieldEquals("Market", xcksmMarketAddress, "name", expectedMarketName)
    assert.fieldEquals("Market", xcksmMarketAddress, "symbol", xcksmMarketSymbol)
    assert.fieldEquals("Market", xcksmMarketAddress, "interestRateModelAddress", expectedInterestRateModel)
    assert.fieldEquals("Market", xcksmMarketAddress, "_feed", expectedXcksmAggregator)
  })

  test ("Should create two accounts", () => {
    assert.entityCount("Account", 0) // There should be no accounts yet
    saveAccount(testAccountAddress1)
    assert.entityCount("Account", 1) // There should be one account now
    saveAccount(testAccountAddress2)
    assert.entityCount("Account", 2) // There should be two accounts now
  })
})

describe("Call event-based mappings with custom events", () => {
  test("Should handle two Mint events in the MOVR market", () => {
    let amount1 = BigInt.fromString("1000000000000000000")
    let expectedAmount1 = amount1.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)
    let amount2 = BigInt.fromString("2000000000000000000")
    let expectedAmount2 = amount2.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)

    // Call mappings
    let newHashString1 = "0x" + "1".repeat(64)
    let newMintEvent1 = createNewMintEvent(
      testAccountAddress1,
      movrMarketAddress,
      amount1,
      newHashString1,
    )

    let newHashString2 = "0x" + "2".repeat(64)
    let newMintEvent2 = createNewMintEvent(
      testAccountAddress2,
      movrMarketAddress,
      amount2,
      newHashString2,
    )

    let mintID1 = newHashString1 + "-1" // Mint ID is the transaction hash + '-' + transaction.logIndex which is always 1
    let mintID2 = newHashString2 + "-1" // Mint ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.entityCount("MintEvent", 0) // There should be no mints yet
    handleNewMints([newMintEvent1, newMintEvent2])
    assert.entityCount("MintEvent", 2) // There should be two mints now
    assert.fieldEquals("MintEvent", mintID1, "id", mintID1)
    assert.fieldEquals("MintEvent", mintID1, "to", testAccountAddress1)
    assert.fieldEquals("MintEvent", mintID1, "from", movrMarketAddress)
    assert.fieldEquals("MintEvent", mintID1, "amount", expectedAmount1.toString())
    assert.fieldEquals("MintEvent", mintID2, "id", mintID2)
    assert.fieldEquals("MintEvent", mintID2, "to", testAccountAddress2)
    assert.fieldEquals("MintEvent", mintID2, "from", movrMarketAddress)
    assert.fieldEquals("MintEvent", mintID2, "amount", expectedAmount2.toString())
  })

  test("Should handle two Mint events in the xcKSM market", () => {
    let amount3 = BigInt.fromString("3000000000000000000")
    let expectedAmount3 = amount3.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)
    let amount4 = BigInt.fromString("4000000000000000000")
    let expectedAmount4 = amount4.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)

    // Call mappings
    let newHashString3 = "0x" + "3".repeat(64)
    let newMintEvent3 = createNewMintEvent(
      testAccountAddress1,
      xcksmMarketAddress,
      amount3,
      newHashString3,
    )

    let newHashString4 = "0x" + "4".repeat(64)
    let newMintEvent4 = createNewMintEvent(
      testAccountAddress2,
      xcksmMarketAddress,
      amount4,
      newHashString4,
    )

    let mintID3 = newHashString3 + "-1" // Mint ID is the transaction hash + '-' + transaction.logIndex which is always 1
    let mintID4 = newHashString4 + "-1" // Mint ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.entityCount("MintEvent", 2) // There should be two mints now
    handleNewMints([newMintEvent3, newMintEvent4])
    assert.entityCount("MintEvent", 4) // There should be four mints now
    assert.fieldEquals("MintEvent", mintID3, "id", mintID3)
    assert.fieldEquals("MintEvent", mintID3, "to", testAccountAddress1)
    assert.fieldEquals("MintEvent", mintID3, "from", xcksmMarketAddress)
    assert.fieldEquals("MintEvent", mintID3, "amount", expectedAmount3.toString())
    assert.fieldEquals("MintEvent", mintID4, "id", mintID4)
    assert.fieldEquals("MintEvent", mintID4, "to", testAccountAddress2)
    assert.fieldEquals("MintEvent", mintID4, "from", xcksmMarketAddress)
    assert.fieldEquals("MintEvent", mintID4, "amount", expectedAmount4.toString())
  })

  test("Handle a Mint-type Transfer event (market -> account)", () => {
    let transferAmount = BigInt.fromString("100000000000000000000")
    // Need to mock the balanceOf function for the from account (the market contract)
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "balanceOf", "balanceOf(address):(uint256)",
    )
      .withArgs([ethereum.Value.fromAddress(Address.fromString(movrMarketAddress))])
      .returns([ethereum.Value.fromUnsignedBigInt(zeroBI)])
    // Also need to mock the balanceOf function for the to account (test account 1)
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "balanceOf", "balanceOf(address):(uint256)",
    )
      .withArgs([ethereum.Value.fromAddress(Address.fromString(testAccountAddress1))])
      .returns([ethereum.Value.fromUnsignedBigInt(transferAmount)])

    // Call mappings
    let newHashString = "0x" + "1".repeat(64) // Generate a unique transaction hash
    let newTransferEvent = createNewTransferEvent(
      movrMarketAddress,
      movrMarketAddress, // Simulate a mint from the market contract to test account 1
      testAccountAddress1,
      transferAmount,
      newHashString,
    )

    let transferID = newHashString + "-1" // Transfer ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.fieldEquals("Market", movrMarketAddress, "supplierCount", "0") // There should be no suppliers yet
    assert.entityCount("TransferEvent", 0) // There should be no transfers yet
    handleNewTransfers([newTransferEvent])
    assert.entityCount("TransferEvent", 1) // There should be one transfer now
    assert.fieldEquals("Market", movrMarketAddress, "supplierCount", "1") // There should be one supplier now
    assert.fieldEquals("TransferEvent", transferID, "id", transferID)
    assert.fieldEquals("TransferEvent", transferID, "from", movrMarketAddress)
    assert.fieldEquals("TransferEvent", transferID, "to", testAccountAddress1)
    assert.fieldEquals("TransferEvent", transferID, "amount", transferAmount.toBigDecimal().div(cTokenDecimalsBD).toString())
  })

  test("Handle a Liquidation-type 1 (seize mTokens) Transfer event (liquidated -> liquidator)", () => {
    let transferAmount = BigInt.fromString("100000000000000000000")
    // Need to mock the balanceOf function for the from account (test account 1, the account being liquidated)
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "balanceOf", "balanceOf(address):(uint256)",
    )
      .withArgs([ethereum.Value.fromAddress(Address.fromString(testAccountAddress1))])
      .returns([ethereum.Value.fromUnsignedBigInt(zeroBI)])
    // Also need to mock the balanceOf function for the to account (test account 2, the liquidator)
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "balanceOf", "balanceOf(address):(uint256)",
    )
      .withArgs([ethereum.Value.fromAddress(Address.fromString(testAccountAddress2))])
      .returns([ethereum.Value.fromUnsignedBigInt(transferAmount)])

    // Call mappings
    let newHashString = "0x" + "2".repeat(64) // Generate a unique transaction hash
    let newTransferEvent = createNewTransferEvent(
      movrMarketAddress,
      testAccountAddress1, // Simulate a seize from test account 1 to test account 2
      testAccountAddress2,
      transferAmount,
      newHashString,
    )
  
    let transferID = newHashString + "-1" // Transfer ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.fieldEquals("Market", movrMarketAddress, "supplierCount", "1") // There should be one supplier now
    assert.entityCount("TransferEvent", 1) // There should be one transfer now
    handleNewTransfers([newTransferEvent])
    assert.entityCount("TransferEvent", 2) // There should be two transfers now
    assert.fieldEquals("Market", movrMarketAddress, "supplierCount", "1") // There should still be one supplier now
    assert.fieldEquals("TransferEvent", transferID, "id", transferID)
    assert.fieldEquals("TransferEvent", transferID, "from", testAccountAddress1)
    assert.fieldEquals("TransferEvent", transferID, "to", testAccountAddress2)
    assert.fieldEquals("TransferEvent", transferID, "amount", transferAmount.toBigDecimal().div(cTokenDecimalsBD).toString())
  })

  test("Handle a Redeem-type Transfer event (account -> market)", () => {
    let transferAmount = BigInt.fromString("100000000000000000000")
    // Need to mock the balanceOf function for the from account (test account 2, the liquidator in previous test)
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "balanceOf", "balanceOf(address):(uint256)",
    )
      .withArgs([ethereum.Value.fromAddress(Address.fromString(testAccountAddress2))])
      .returns([ethereum.Value.fromUnsignedBigInt(zeroBI)])
    // Also need to mock the balanceOf function for the to account (the market contract)
    createMockedFunction(
      Address.fromString(movrMarketAddress),
      "balanceOf", "balanceOf(address):(uint256)",
    )
      .withArgs([ethereum.Value.fromAddress(Address.fromString(movrMarketAddress))])
      .returns([ethereum.Value.fromUnsignedBigInt(zeroBI)])

    // Call mappings
    let newHashString = "0x" + "3".repeat(64) // Generate a unique transaction hash
    let newTransferEvent = createNewTransferEvent(
      movrMarketAddress,
      testAccountAddress2, // Simulate a redeem from test account 2 to the market contract
      movrMarketAddress,
      transferAmount,
      newHashString,
    )
  
    let transferID = newHashString + "-1" // Transfer ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.fieldEquals("Market", movrMarketAddress, "supplierCount", "1") // There should be one supplier now
    assert.entityCount("TransferEvent", 2) // There should be one transfer now
    handleNewTransfers([newTransferEvent])
    assert.entityCount("TransferEvent", 3) // There should be two transfers now
    assert.fieldEquals("Market", movrMarketAddress, "supplierCount", "0") // There should be zero suppliers now
    assert.fieldEquals("TransferEvent", transferID, "id", transferID)
    assert.fieldEquals("TransferEvent", transferID, "from", testAccountAddress2)
    assert.fieldEquals("TransferEvent", transferID, "to", movrMarketAddress)
    assert.fieldEquals("TransferEvent", transferID, "amount", transferAmount.toBigDecimal().div(cTokenDecimalsBD).toString())
  })

  test("Should handle two Redeem events in the MOVR market", () => {
    let amount1 = BigInt.fromString("1000000000000000000")
    let expectedAmount1 = amount1.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)
    let amount2 = BigInt.fromString("2000000000000000000")
    let expectedAmount2 = amount2.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)

    // Call mappings
    let newHashString1 = "0x" + "1".repeat(64)
    let newRedeemEvent1 = createNewRedeemEvent(
      testAccountAddress1,
      movrMarketAddress,
      amount1,
      newHashString1,
    )

    let newHashString2 = "0x" + "2".repeat(64)
    let newRedeemEvent2 = createNewRedeemEvent(
      testAccountAddress2,
      movrMarketAddress,
      amount2,
      newHashString2,
    )

    let redeemID1 = newHashString1 + "-1" // Redeem ID is the transaction hash + '-' + transaction.logIndex which is always 1
    let redeemID2 = newHashString2 + "-1" // Redeem ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.entityCount("RedeemEvent", 0) // There should be no redeems yet
    handleNewRedeems([newRedeemEvent1, newRedeemEvent2])
    assert.entityCount("RedeemEvent", 2) // There should be two redeems now
    assert.fieldEquals("RedeemEvent", redeemID1, "id", redeemID1)
    assert.fieldEquals("RedeemEvent", redeemID1, "to", movrMarketAddress)
    assert.fieldEquals("RedeemEvent", redeemID1, "from", testAccountAddress1)
    assert.fieldEquals("RedeemEvent", redeemID1, "amount", expectedAmount1.toString())
    assert.fieldEquals("RedeemEvent", redeemID2, "id", redeemID2)
    assert.fieldEquals("RedeemEvent", redeemID2, "to", movrMarketAddress)
    assert.fieldEquals("RedeemEvent", redeemID2, "from", testAccountAddress2)
    assert.fieldEquals("RedeemEvent", redeemID2, "amount", expectedAmount2.toString())
  })

  test("Should handle two Redeem events in the xcKSM market", () => {
    let amount1 = BigInt.fromString("1000000000000000000")
    let expectedAmount1 = amount1.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)
    let amount2 = BigInt.fromString("2000000000000000000")
    let expectedAmount2 = amount2.toBigDecimal().div(cTokenDecimalsBD).truncate(cTokenDecimals)

    // Call mappings
    let newHashString3 = "0x" + "3".repeat(64)
    let newRedeemEvent3 = createNewRedeemEvent(
      testAccountAddress1,
      xcksmMarketAddress,
      amount1,
      newHashString3,
    )

    let newHashString4 = "0x" + "4".repeat(64)
    let newRedeemEvent4 = createNewRedeemEvent(
      testAccountAddress2,
      xcksmMarketAddress,
      amount2,
      newHashString4,
    )

    let redeemID3 = newHashString3 + "-1" // Redeem ID is the transaction hash + '-' + transaction.logIndex which is always 1
    let redeemID4 = newHashString4 + "-1" // Redeem ID is the transaction hash + '-' + transaction.logIndex which is always 1
    assert.entityCount("RedeemEvent", 2) // There should be two redeems now
    handleNewRedeems([newRedeemEvent3, newRedeemEvent4])
    assert.entityCount("RedeemEvent", 4) // There should be four redeems now
    assert.fieldEquals("RedeemEvent", redeemID3, "id", redeemID3)
    assert.fieldEquals("RedeemEvent", redeemID3, "to", xcksmMarketAddress)
    assert.fieldEquals("RedeemEvent", redeemID3, "from", testAccountAddress1)
    assert.fieldEquals("RedeemEvent", redeemID3, "amount", expectedAmount1.toString())
    assert.fieldEquals("RedeemEvent", redeemID4, "id", redeemID4)
    assert.fieldEquals("RedeemEvent", redeemID4, "to", xcksmMarketAddress)
    assert.fieldEquals("RedeemEvent", redeemID4, "from", testAccountAddress2)
    assert.fieldEquals("RedeemEvent", redeemID4, "amount", expectedAmount2.toString())
  })

  test("Should handle two Borrow events in the MOVR market", () => {
    let market = Market.load(movrMarketAddress)!
    let borrowAmount1 = BigInt.fromString("5000000000000000000");
    let expectedAmount1 = borrowAmount1
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals);
    let borrowAmount2 = BigInt.fromString("3000000000000000000");
    let expectedAmount2 = borrowAmount2
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals);
    let hashString1 = "0x" + "1".repeat(64);
    let hashString2 = "0x" + "2".repeat(64);
  
    let borrowEvent1 = createNewBorrowEvent(
      testAccountAddress1,
      borrowAmount1,
      borrowAmount1,
      borrowAmount1,
      movrMarketAddress,
      hashString1
    );
  
    let borrowEvent2 = createNewBorrowEvent(
      testAccountAddress1,
      borrowAmount2,
      borrowAmount2.plus(borrowAmount1),
      borrowAmount2.plus(borrowAmount1),
      movrMarketAddress,
      hashString2
    );
  
    let borrowID1 = hashString1 + "-1";
    let borrowID2 = hashString2 + "-1";
  
    assert.entityCount("BorrowEvent", 0); // There should be no borrows yet
    assert.fieldEquals("Market", movrMarketAddress, "borrowerCount", "0"); // There should be no borrowers yet
  
    handleNewBorrows([borrowEvent1]);
    assert.entityCount("BorrowEvent", 1); // There should be one borrow now
    assert.fieldEquals("Market", movrMarketAddress, "borrowerCount", "1"); // There should be one borrower now
    assert.fieldEquals("BorrowEvent", borrowID1, "id", borrowID1);
    assert.fieldEquals("BorrowEvent", borrowID1, "borrower", testAccountAddress1);
    assert.fieldEquals("BorrowEvent", borrowID1, "amount", expectedAmount1.toString());
    assert.fieldEquals("BorrowEvent", borrowID1, "accountBorrows", expectedAmount1.toString());
    assert.fieldEquals("BorrowEvent", borrowID1, "underlyingSymbol", market.underlyingSymbol);
  
    handleNewBorrows([borrowEvent2]);
    assert.entityCount("BorrowEvent", 2); // There should be two borrows now
    assert.fieldEquals("Market", movrMarketAddress, "borrowerCount", "1"); // There should still be one borrower
    assert.fieldEquals("BorrowEvent", borrowID2, "id", borrowID2);
    assert.fieldEquals("BorrowEvent", borrowID2, "borrower", testAccountAddress1);
    assert.fieldEquals("BorrowEvent", borrowID2, "amount", expectedAmount2.toString());
    assert.fieldEquals("BorrowEvent", borrowID2, "accountBorrows", expectedAmount2.plus(expectedAmount1).toString());
    assert.fieldEquals("BorrowEvent", borrowID2, "underlyingSymbol", market.underlyingSymbol);
  });

  test("Should handle two Repayment events in order", () => {
    let market = Market.load(movrMarketAddress)!
    let borrowAmount1 = BigInt.fromString("5000000000000000000");
    let expectedAmount1 = borrowAmount1
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals);
    let borrowAmount2 = BigInt.fromString("3000000000000000000");
    let expectedAmount2 = borrowAmount2
      .toBigDecimal()
      .div(exponentToBigDecimal(market.underlyingDecimals))
      .truncate(market.underlyingDecimals);
    let repayAmount1 = borrowAmount1;
    let repayAmount2 = borrowAmount2;
    let hashString3 = "0x" + "3".repeat(64);
    let hashString4 = "0x" + "4".repeat(64);
  
    let repayBorrowEvent1 = createNewRepayBorrowEvent(
      testAccountAddress1,
      testAccountAddress1,
      repayAmount1,
      // accountBorrows should be set to the amount borrowed minus the amount repaid
      (borrowAmount1.plus(borrowAmount2)).minus(repayAmount1),
      borrowAmount2.plus(borrowAmount1),
      movrMarketAddress,
      hashString3
    );
  
    let repayBorrowEvent2 = createNewRepayBorrowEvent(
      testAccountAddress1,
      testAccountAddress1,
      repayAmount2,
      zeroBI, // When repaying the last amount borrowed, accountBorrows should be set to zero
      borrowAmount2,
      movrMarketAddress,
      hashString4
    );
  
    let repayID1 = hashString3 + "-1";
    let repayID2 = hashString4 + "-1";
  
    handleNewRepayBorrows([repayBorrowEvent1]);
    assert.entityCount("RepayEvent", 1);
    assert.fieldEquals("RepayEvent", repayID1, "id", repayID1);
    assert.fieldEquals("RepayEvent", repayID1, "payer", testAccountAddress1);
    assert.fieldEquals("RepayEvent", repayID1, "borrower", testAccountAddress1);
    assert.fieldEquals("RepayEvent", repayID1, "amount", expectedAmount1.toString());
    // After repaying the first borrow, the remaining accountBorrows amount should be the second borrow amount
    assert.fieldEquals("RepayEvent", repayID1, "accountBorrows", expectedAmount2.toString());
    assert.fieldEquals("RepayEvent", repayID1, "underlyingSymbol", market.underlyingSymbol);
  
    handleNewRepayBorrows([repayBorrowEvent2]);
    assert.entityCount("RepayEvent", 2);
    assert.fieldEquals("RepayEvent", repayID2, "id", repayID2);
    assert.fieldEquals("RepayEvent", repayID2, "payer", testAccountAddress1);
    assert.fieldEquals("RepayEvent", repayID2, "borrower", testAccountAddress1);
    assert.fieldEquals("RepayEvent", repayID2, "amount", expectedAmount2.toString());
    assert.fieldEquals("RepayEvent", repayID2, "accountBorrows", "0");
    assert.fieldEquals("RepayEvent", repayID2, "underlyingSymbol", market.underlyingSymbol);
  
    // Borrower count should be zero after repaying all borrows
    assert.fieldEquals("Market", movrMarketAddress, "borrowerCount", "0");
  });
})