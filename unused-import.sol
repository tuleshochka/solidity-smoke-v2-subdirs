// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "./template.sol"; //bug
contract B {
    uint a;
    function increment() public{
        a++;
    }
}

contract C is Test {
    uint a;
    function increment() public{
        a++;
    }
}
