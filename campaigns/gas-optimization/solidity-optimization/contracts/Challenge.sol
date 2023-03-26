// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Challenge {
    uint256 private immutable SKIP;

    constructor(uint256 skip) {
        SKIP = skip;
    }

    /**
     * @notice Returns the sum of the elements of the given array, skipping any SKIP value.
     * @param array The array to sum.
     * @return sum The sum of all the elements of the array excluding SKIP.
     */
    function sumAllExceptSkip(
        uint256[] calldata array
    ) external view returns (uint256 sum) {
        // IMPLEMENT HERE
        uint256 length = array.length;

        for (uint256 i; i < length; ) {
            uint256 value = array[i];
            if (value != SKIP) {
                sum += value;
            }
            unchecked {
                ++i;
            }
           
        }

        return sum;
    }
    
}
