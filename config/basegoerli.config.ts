import { Config } from './config-types'

const config = new Config(
  '0xD73f191a50D4BFb5301AE0dF27F5164332df4618',
  'ETH',
  '0xdd702A5B463adB3b8AfddDB77B88DFaca8B2D3Ca',
  '0x0000000000000000000000000000000000000000',
  2147483647, // no protocol native pair, start at max i32 (never)
  0,
  '0x0000000000000000000000000000000000000000',
  [],
  '0x0000000000000000000000000000000000000000',
  2147483647, // no safety module, start at max i32 (never)
)

export default config
