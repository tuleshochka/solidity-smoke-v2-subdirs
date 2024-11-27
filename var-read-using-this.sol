// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract C {
    mapping(uint => address) public myMap;
    function test(uint x) external returns(address) {
        return this.myMap(x);
    }
}

