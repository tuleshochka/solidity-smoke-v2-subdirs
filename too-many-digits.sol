// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
        uint x1 = 0x000001; //ok
        uint x2 = 0x0000000000001; //ok
        uint x3 = 1000000000000000000; //bug
        uint x4 = 100000; //bug
}
