// SPDX-License-Identifier: GPL-3.0 

pragma solidity ^0.8.24;

import "./IERC20.sol";


contract Test {

    IERC20 public immutable erc20;

    constructor(IERC20 _erc20) {
        erc20 = _erc20;
    }


    function bad(address from, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s, address to) public {
        //rule-id: arbitrary-send-erc20-permit
        erc20.permit(from, address(this), value, deadline, v, r, s);
        erc20.transferFrom(from, to, value);
    }

}

contract Test2 {

    IERC20 public immutable erc20;

    constructor(IERC20 _erc20) {
        erc20 = _erc20;
    }

    function bad2(address from, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s, address to) public {
        //rule-id: arbitrary-send-erc20-permit
        erc20.permit(from, address(this), value, deadline, v, r, s);
        erc20.transferFrom(from, to, value);
    }

}

contract Test3 {

    IERC20 public immutable erc20;

    constructor(IERC20 _erc20) {
        erc20 = _erc20;
    }

    function good(uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s, address to) public {
        //rule-id: ok
        erc20.permit(msg.sender, address(this), value, deadline, v, r, s);
        erc20.transferFrom(msg.sender, to, value);
    }

}

contract Test4 {

    IERC20 public immutable erc20;

    constructor(IERC20 _erc20) {
        erc20 = _erc20;
    }

    function bad3(address from, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s, address to) public {
        //rule-id: arbitrary-send-erc20-permit
        erc20.permit(msg.sender, address(this), value, deadline, v, r, s);
        erc20.transferFrom(from, to, value);
    }

}