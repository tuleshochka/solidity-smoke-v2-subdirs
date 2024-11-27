// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract C {
    address owner;
    uint buyPrice;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender != owner, "not owner");
        _;
    }

    function setBuyPrice(uint256 newBuyPrice) onlyOwner public {
        buyPrice = newBuyPrice;
    }

    function buy() external {
     //... // buyPrice is used to determine the number of tokens purchased
    }
}