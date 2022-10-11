import { Config, OracleOverride } from './config-types'

const config = new Config(
  '0x0b7a0EAA884849c6Af7a129e899536dDDcA4905E',
  'MOVR',
  '0x6a1A771C7826596652daDC9145fEAaE62b1cd07f',
  '0xE6Bfc609A2e58530310D6964ccdd236fc93b4ADB',
  1512356,
  1,
  '0x0000000000000000000000000000000000000000',
  '0xBb8d88bcD9749636BC4D2bE22aaC4Bb3B01A58F1',
  '0xCd76e63f3AbFA864c53b4B98F57c1aA6539FDa3a',
  [
    new OracleOverride(
      2536028,
      '0x6a1A771C7826596652daDC9145fEAaE62b1cd07f',
      '0x090ef17e7fff9abb3bff40f9b75bd5e08d4fb87c',
    ),
  ],
)

export default config
