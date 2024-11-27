// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.24;

contract MsgValueInLoop{

    mapping (address => uint256) balances;

    function bad(address[] memory receivers) public payable {
        for (uint256 i=0; i < receivers.length; i++) {
            //rule-id: msg-value-loop
            balances[receivers[i]] += msg.value;
        }
    }

}