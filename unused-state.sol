// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract B {
    uint a; //ok
    uint b=10; //bug
    uint c; //ok
    function increment() public{
        a++;
    }
    function decrement() public{
        c=msg.value;
    }
}