// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract{
  struct BalancesStruct{
        address owner;
        mapping(address => uint) balances;
    }
    mapping(address => BalancesStruct) public stackBalance;

    function remove() internal{
         delete stackBalance[msg.sender]; //bug
    }
}