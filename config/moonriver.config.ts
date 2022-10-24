import { Config, OracleOverride } from './config-types'

const config = new Config(
  '0x0b7a0EAA884849c6Af7a129e899536dDDcA4905E',
  'MOVR',
  '0x6a1A771C7826596652daDC9145fEAaE62b1cd07f',
  '0xE6Bfc609A2e58530310D6964ccdd236fc93b4ADB',
  1512356,
  1,
  '0x2BE2e230e89c59c8E20E633C524AD2De246e7370',
  [
    new OracleOverride(
      2536028,
      '0x6a1A771C7826596652daDC9145fEAaE62b1cd07f',
      '0x090ef17e7fff9abb3bff40f9b75bd5e08d4fb87c',
    ),
  ],
)

export default config
