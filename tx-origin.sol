// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TxOrigin {
    address public owner;

    constructor() {
        owner=msg.sender;
        require(tx.origin == owner); //bug
    }


    function bug() public view {
        require(tx.origin == owner); //bug
    }

    function bad() public view returns(uint) {
        uint k=1;
        if(tx.origin == owner) { //bug
            return k;
            }
        return k;
    }

    function bad1() public view returns(uint) {
        uint k=1;
        assert(tx.origin==owner); //bug
        return k;
    }

    function good() public view returns(uint) {
        uint k=1;
        require(msg.sender == owner); //OK
        if (msg.sender==owner) { //OK
            return k;
            }
        return k;
    }
}