// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.26;

contract Bug {

    uint public counter;

    function increase() public returns(uint){
        counter =+ 1;
        return counter;
    }
}