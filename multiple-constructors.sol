// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.22;

//rule-id: multiple-constructors
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

//rule-id: ok
contract B {
    uint x;

    constructor() public {
        x = 0;
    }

    function bcd() public {
        x = 1;
    }

    function test() public returns(uint) {
        return x;
    }
}
