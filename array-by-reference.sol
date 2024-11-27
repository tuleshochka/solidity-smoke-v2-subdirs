// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Memory {
    uint[1] public x; // storage

    function f() public {
        f1(x); // update x
        f2(x); // do not update x
    }

    function f1(uint[1] storage arr) internal { // by reference
        arr[0] = 1;
    }

    function f2(uint[1] memory arr) pure internal { // by value
        arr[0] = 2;
    }
}