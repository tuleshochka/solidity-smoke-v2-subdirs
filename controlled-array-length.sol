// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.24;

contract A {
	
	uint[] testArray; // dynamic size array

	function f(uint usersCount) public {
		// ...
		testArray.length = usersCount;
		// ...
	}

	function g(uint userIndex, uint val) public {
		// ...
		testArray[userIndex] = val;
		// ...
	}
}