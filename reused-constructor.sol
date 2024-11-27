// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.0;

contract A {
    uint num = 5;
    constructor(uint x) public{
        num += x;
    }
}

contract B is A {
    constructor() A(2) public { /* ... */ }
}

contract C is A {
    constructor() A(3) public { /* ... */ }
}

contract D is B, C {
    constructor() public { /* ... */ }
}

contract E is B {
    constructor() A(1) public { /* ... */ }
}