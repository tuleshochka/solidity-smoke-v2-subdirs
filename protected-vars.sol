// SPDX-License-Identifier:  MIT
pragma solidity ^0.8.0;

contract Owned {
    constructor() { owner = msg.sender; }
    address owner;

    modifier onlyOwner {
        require(
            msg.sender == owner,
            "Only owner can call this function."
        );
        _;
    }
}

contract Buggy is Owned{

    function set_protected() public onlyOwner {
        owner = msg.sender;
    }

    function set_not_protected() public{
        owner = msg.sender;
    }
}