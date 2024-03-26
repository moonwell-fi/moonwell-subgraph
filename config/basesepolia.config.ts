import { Config } from './config-types'

const config = new Config(
  '0xC72ba45f2Ae134F21DAEb2b7B5fd5De0064Ee9bB',
  '',
  '0x0000000000000000000000000000000000000000',
  '0x0000000000000000000000000000000000000000',
  2147483647, // no protocol native pair, start at max i32 (never)
  0,
  '0x0000000000000000000000000000000000000000',
  [],
  '0x0000000000000000000000000000000000000000',
  2147483647, // no safety module, start at max i32 (never)
  2147483647,
)

export default config
