// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
	function my_func() external pure {
        uint b=100;
        uint c=200;
        uint a = b;
        a = c;
    }
}