import { Chain, Common, Hardfork } from '@ethereumjs/common'
import { writeFileSync } from "node:fs"
import { EVM } from '@ethereumjs/evm'
import * as JSONbig from "json-bigint"
const common = new Common({ chain: Chain.Mainnet, hardfork: Hardfork.Cancun })
const evm = await EVM.create({ common, })
const codes = evm.getActiveOpcodes()
const opcodes: any = {
    dynamicGas: [],
    staticGas: [],
    eips: common["_activatedEIPsCache"],
    gas: common["_paramsCache"]
}
for (const code of codes.values()) {
    const item = {
        ...code,
        codeHex: "0x" + code.code.toString(16),
    }
    if (code.dynamicGas) {
        opcodes.dynamicGas.push(item)
    } else {
        opcodes.staticGas.push(item)
    }
}
writeFileSync("gasConfig.json", JSONbig.stringify(opcodes, null, 2))