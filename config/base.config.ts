import { Config } from './config-types'

const config = new Config(
  '0xfBb21d0380beE3312B33c4353c8936a0F13EF26C',
  '',
  '0x0000000000000000000000000000000000000000',
  '0x0000000000000000000000000000000000000000',
  2147483647, // no protocol native pair, start at max i32 (never)
  0,
  '0x0000000000000000000000000000000000000000',
  [],
  '0x0000000000000000000000000000000000000000',
  2147483647, // no safety module, start at max i32 (never)
)

export default config
