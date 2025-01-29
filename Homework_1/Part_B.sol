// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseOperations {
    function extractBits(uint8 num) public pure returns (uint8[] memory) {
        uint8; // Max size for uint8
        uint8 mask = 1; // Start with the mask for the least significant bit

        for (uint8 i = 0; i < 8; i++) {
            if (num & mask != 0) {
                result[i] = uint8(2**i); // Add the power of 2 if the bit is set
            }
            mask <<= 1; // Shift the mask to the left
        }

        return result;
    }
}
