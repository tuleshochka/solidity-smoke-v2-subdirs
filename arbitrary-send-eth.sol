// SPDX-License-Identifier:  MIT
pragma solidity ^0.8.0;

contract ArbitrarySendEth{
    address payable destination;

    function setDestination() public {
        destination = payable(msg.sender);
    }

    function withdraw() public {
        destination.transfer(address(this).balance);
    }
}