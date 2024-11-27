// SPDX-License-Identifier:  MIT
pragma solidity ^0.8.0;

contract ArbitrarySendEth{
    //Something like 2^0xf is likely to be a correct bitwise operator
    uint UINT_MAX = 2^256 - 1; //bug

    address payable destination;

    function setDestination() public {
        destination = payable(msg.sender);
    }
}