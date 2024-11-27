// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract A{}

contract B is A {
    constructor() public A(){}
}