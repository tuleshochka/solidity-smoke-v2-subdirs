// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract Uninitialized{
    //rule-id: uninitialized-state
    address payable destination;

    //rule-id: OK
    address addr1 = msg.sender;
    address destination1 = payable(addr1);
    

    function transfer() payable public{
        destination.transfer(msg.value);
    }
}