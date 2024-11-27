// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.24;

import "./IERC20.sol";

contract Test {

    IERC20 public immutable erc20;

    constructor(IERC20 _erc20) {
        erc20 = _erc20;
    }

    function a(address from, address to, uint256 amount) public {
            //ruleid: arbitrary-send-erc20
            erc20.transferFrom(from, to, amount);
    }

    function b(address to, uint256 amount) public {
            //ruleid: ok
            erc20.transferFrom(msg.sender, to, amount);
    }

}