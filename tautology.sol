// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
	function f(uint x) public pure{
        if (x >= 0) { // bad -- always true
           x++;
        }
	}

	function g(uint8 y) public pure returns (bool) {
    return (y < 512); // bad!
	}
}