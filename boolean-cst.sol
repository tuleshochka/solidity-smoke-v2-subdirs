// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractTemp {
    address public owner;

    constructor(){
        owner=msg.sender;
    }


    function f(uint x) public pure {
        if (false) { // bad!
           x++;
        }
	}

	function g(bool b) public pure returns (bool) {
        return (b || true); // bad!
	}
}