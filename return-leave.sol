// SPDX-License-Identifier:  MIT
pragma solidity ^0.8.0;

contract C {
    function f() internal pure returns (uint, uint) {
        assembly {
            return (5, 6) //bug
        }
    }

}
