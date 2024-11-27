// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.24;

contract Suicidal{
    function kill() public {
        selfdestruct(msg.sender);
    }
}