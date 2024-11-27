// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
	uint coins;

    function f(uint n, uint oldSupply, uint interest) public {
        coins = (oldSupply / n) * interest;
    }
}