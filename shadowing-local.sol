// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.24;

contract Bug {

    uint owner;
    //rule-id: shadowing-local
    function sensitive_function(address owner) public {
        // ...
        require(owner == msg.sender);
    }
    //rule-id: shadowing-local
    function alternate_sensitive_function() public {
        address owner = msg.sender;
        require(owner == msg.sender);
    }
    
}