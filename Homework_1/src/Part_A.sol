// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BinaryToDecimal {
    function binaryToDecimal(string memory binary) public pure returns (uint256) {
        bytes memory binaryBytes = bytes(binary);
        uint256 decimal = 0;
        uint256 length = binaryBytes.length;

        for (uint256 i = 0; i < length; i++) {
            if (binaryBytes[i] == "1") {
                decimal += 2**(length - i - 1); // Add the corresponding power of 2
            } else if (binaryBytes[i] != "0") {
                revert("Invalid binary input");
            }
        }

        return decimal;
    }
}
