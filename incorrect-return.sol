// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.26;

contract C {

    function f() internal returns (uint a, uint b) {
        assembly {
            return (5, 6)
        }
    }

    function g() internal returns (bool) {
        f();
        return true;
    }
}