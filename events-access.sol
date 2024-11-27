// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract C {
    address owner;
    constructor(){
        owner=msg.sender;
    }

    modifier onlyAdmin {
        require(msg.sender != owner, "not Admin");
        _;
    }

    function updateOwner(address newOwner) onlyAdmin external {
        owner = newOwner;
    }
}