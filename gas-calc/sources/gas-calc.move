module self::gascalc {
    use std::vector;
    fun calc_gas(opcode :u8, stack: vector<u8>): u64 {
        if (opcode == 0x00) {
            // STOP
            return 0;
        } else if (opcode == 0x01) {
            // ADD
            return 3;
        } else if (opcode == 0x02) {
            // MUL
            return 5;
        } else if (opcode == 0x03) {
            // SUB
            return 3;
        } else if (opcode == 0x04) {
            // DIV
            return 5;
        } else if (opcode == 0x05) {
            // SDIV
            return 5;
        } else if (opcode == 0x06) {
            // MOD
            return 5;
        } else if (opcode == 0x07) {
            // SMOD
            return 5;
        } else if (opcode == 0x08) {
            // ADDMOD
            return 8;
        } else if (opcode == 0x09) {
            // MULMOD
            return 8;
        } else if (opcode == 0x0A) {
            // EXP (dynamic gas)
            // Additional gas cost depends on the exponent
            return 10;
        } else if (opcode == 0x0B) {
            // SIGNEXTEND
            return 5;
        } else if (opcode == 0x10) {
            // LT
            return 3;
        } else if (opcode == 0x11) {
            // GT
            return 3;
        } else if (opcode == 0x12) {
            // SLT
            return 3;
        } else if (opcode == 0x13) {
            // SGT
            return 3;
        } else if (opcode == 0x14) {
            // EQ
            return 3;
        } else if (opcode == 0x15) {
            // ISZERO
            return 3;
        } else if (opcode == 0x16) {
            // AND
            return 3;
        } else if (opcode == 0x17) {
            // OR
            return 3;
        } else if (opcode == 0x18) {
            // XOR
            return 3;
        } else if (opcode == 0x19) {
            // NOT
            return 3;
        } else if (opcode == 0x1A) {
            // BYTE
            return 3;
        } else if (opcode == 0x1B) {
            // SHL
            return 3;
        } else if (opcode == 0x1C) {
            // SHR
            return 3;
        } else if (opcode == 0x1D) {
            // SAR
            return 3;
        } else if (opcode == 0x20) {
            // SHA3 (dynamic gas)
            // Additional gas cost depends on the size of data
            return 30;
        } else if (opcode == 0x30) {
            // ADDRESS
            return 2;
        } else if (opcode == 0x31) {
            // BALANCE
            return 700;
        } else if (opcode == 0x32) {
            // ORIGIN
            return 2;
        } else if (opcode == 0x33) {
            // CALLER
            return 2;
        } else if (opcode == 0x34) {
            // CALLVALUE
            return 2;
        } else if (opcode == 0x35) {
            // CALLDATALOAD
            return 3;
        } else if (opcode == 0x36) {
            // CALLDATASIZE
            return 2;
        } else if (opcode == 0x37) {
            // CALLDATACOPY (dynamic gas)
            // Additional gas cost depends on the size of data
            return 3;
        } else if (opcode == 0x38) {
            // CODESIZE
            return 2;
        } else if (opcode == 0x39) {
            // CODECOPY (dynamic gas)
            // Additional gas cost depends on the size of data
            return 3;
        } else if (opcode == 0x3A) {
            // GASPRICE
            return 2;
        } else if (opcode == 0x3B) {
            // EXTCODESIZE
            return 700;
        } else if (opcode == 0x3C) {
            // EXTCODECOPY (dynamic gas)
            // Additional gas cost depends on the size of code
            return 700;
        } else if (opcode == 0x3D) {
            // RETURNDATASIZE
            return 2;
        } else if (opcode == 0x3E) {
            // RETURNDATACOPY (dynamic gas)
            // Additional gas cost depends on the size of data
            return 3;
        } else if (opcode == 0x3F) {
            // EXTCODEHASH
            return 700;
        } else if (opcode == 0x40) {
            // BLOCKHASH
            return 20;
        } else if (opcode == 0x41) {
            // COINBASE
            return 2;
        } else if (opcode == 0x42) {
            // TIMESTAMP
            return 2;
        } else if (opcode == 0x43) {
            // NUMBER
            return 2;
        } else if (opcode == 0x44) {
            // PREVRANDAO
            return 2;
        } else if (opcode == 0x45) {
            // GASLIMIT
            return 2;
        } else if (opcode == 0x46) {
            // CHAINID
            return 2;
        } else if (opcode == 0x47) {
            // SELFBALANCE
            return 5;
        } else if (opcode == 0x48) {
            // BASEFEE
            return 2;
        } else if (opcode == 0x49) {
            // BLOBHASH
            return 3;
        } else if (opcode == 0x4A) {
            // BLOBBASEFEE
            return 2;
        } else if (opcode == 0x50) {
            // POP
            return 2;
        } else if (opcode == 0x51) {
            // MLOAD
            return 3;
        } else if (opcode == 0x52) {
            // MSTORE
            return 3;
        } else if (opcode == 0x53) {
            // MSTORE8
            return 3;
        } else if (opcode == 0x54) {
            // SLOAD
            return 2100;
        } else if (opcode == 0x55) {
            // SSTORE (dynamic gas)
            // Additional gas cost depends on the value being stored
            return 22000;
        } else if (opcode == 0x56) {
            // JUMP
            return 8;
        } else if (opcode == 0x57) {
            // JUMPI
            return 10;
        } else if (opcode == 0x58) {
            // PC
            return 2;
        } else if (opcode == 0x59) {
            // MSIZE
            return 2;
        } else if (opcode == 0x5A) {
            // GAS
            return 2;
        } else if (opcode == 0x5B) {
            // JUMPDEST
            return 1;
        } else if (opcode == 0x5C) {
            // TLOAD
            return 100;
        } else if (opcode == 0x5D) {
            // TSTORE
            return 100;
        } else if (opcode == 0x5F) {
            // PUSH0
            return 2;
        } else if (opcode >= 0x60 && opcode <= 0x7F) {
            // PUSH1 to PUSH32
            return 3;
        } else if (opcode >= 0x80 && opcode <= 0x8F) {
            // DUP1 to DUP16
            return 3;
        } else if (opcode >= 0x90 && opcode <= 0x9F) {
            // SWAP1 to SWAP16
            return 3;
        } else if (opcode >= 0xA0 && opcode <= 0xA4) {
            // LOG0 to LOG4 (dynamic gas)
            // Additional gas cost depends on the size of data
            return 375;
        } else if (opcode == 0xF0) {
            // CREATE (dynamic gas)
            // Additional gas cost depends on the size of the created contract
            return 32000;
        } else if (opcode == 0xF1) {
            // CALL (dynamic gas)
            // Additional gas cost depends on the value transferred and the complexity of the call
            return 40;
        } else if (opcode == 0xF2) {
            // CALLCODE (dynamic gas)
            // Additional gas cost depends on the value transferred and the complexity of the call
            return 40;
        } else if (opcode == 0xF3) {
            // RETURN (dynamic gas)
            // Additional gas cost depends on the size of the data returned
            return 0;
        } else if (opcode == 0xF4) {
            // DELEGATECALL (dynamic gas)
            // Additional gas cost depends on the value transferred and the complexity of the call
            return 40;
        } else if (opcode == 0xF5) {
            // CREATE2 (dynamic gas)
            // Additional gas cost depends on the size of the created contract
            return 32000;
        } else if (opcode == 0xFA) {
            // STATICCALL (dynamic gas)
            // Additional gas cost depends on the value transferred and the complexity of the call
            return 40;
        } else if (opcode == 0xFD) {
            // REVERT (dynamic gas)
            // Additional gas cost depends on the size of the data returned
            return 0;
        } else if (opcode == 0xFE) {
            // INVALID
            return 0;
        } else if (opcode == 0xFF) {
            // SELFDESTRUCT (dynamic gas)
            // Additional gas cost depends on the state of the recipient account
            return 5000;
        } else {
            // UNDEFINED OPCODE
            return 0;
        };
        0
    }
}