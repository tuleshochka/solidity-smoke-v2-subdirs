// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdsale{
    function fund_reached() public returns(bool){
        return this.balance == 100 ether;  //bug
    }