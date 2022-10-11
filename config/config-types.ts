export class OracleOverride {
  constructor(
    public readonly blockNumber: i32,
    public readonly mtoken: string,
    public readonly newFeed: string,
  ) {}
}

export class Config {
  constructor(
    public readonly comptrollerAddr: string,
    public readonly nativeToken: string,
    public readonly mNativeAddr: string,
    public readonly protocolNativePairAddr: string,
    public readonly protocolNativePairStartBlock: i32,
    public readonly protocolNativePairProtocolIndex: i32,
    public readonly governorAddr: string,
    public readonly oracleOverrides: Array<OracleOverride>,
  ) {}
}
