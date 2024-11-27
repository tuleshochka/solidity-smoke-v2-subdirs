// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.24;

//rule-id: name-reused
contract A {
    uint x;
    constructor() public {
        x = 0;
    }

    function A() public {
        x = 1;
    }

    function test() public returns(uint) {
        return x;
    }
}

contract A {
    uint x = 1;
    
    function bcd() public {
        x = 123;
    }

    function test() public returns(uint) {
        return x;
    }
}