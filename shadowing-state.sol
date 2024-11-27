// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.24;

contract BaseContract {
    address owner;
    uint aabc;
    modifier isOwner(){
        require(owner == msg.sender);
        _;
    }

}
//rule-id: shadowing-state
contract DerivedContract is BaseContract {
    address owner;
    constructor() public{
        owner = msg.sender;
    }

    function withdraw() isOwner() external{
        msg.sender.transfer(this.balance);
    }
}

//rule-id: ok
contract DerivedTestContract is BaseContract {

    constructor() public {
        owner = msg.sender;
    }

    function withdraw() isOwner() external{
        msg.sender.transfer(this.balance);
    }
}

