// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract C {
    function f() internal pure returns (uint a) {
        assembly {
            a := shr(a, 8) //bug
        }
    }
}
