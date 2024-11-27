// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {

    function withdraw() payable public{
        address payable to; //bug
        to.transfer(address(this).balance);
    }
}