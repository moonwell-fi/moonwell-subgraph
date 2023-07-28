import { Config } from './config-types'

const config = new Config(
  '0xa1939Fcf6aA77a68a1f55Ff759c8Fe6a0eC59020',
  'ETH',
  '0xc71Ed236b67576cf43e2Eb1c961559f31213404b',
  '0x0000000000000000000000000000000000000000',
  2147483647, // no protocol native pair, start at max i32 (never)
  0,
  '0x0000000000000000000000000000000000000000',
  [],
  '0x0000000000000000000000000000000000000000',
  2147483647, // no safety module, start at max i32 (never)
)

export default config
