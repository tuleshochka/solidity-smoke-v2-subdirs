// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.24;


contract Game1 {

    uint reward_determining_number;

    function guessing() external{
      //rule-id: timestamp
      reward_determining_number = uint256(block.timestamp) % 10;
    }
}

contract InsecureRandomNumber {

    constructor() payable {}
 
    function guess(uint256 _guess) public {
        //rule-id: timestamp
        uint256 answer = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender)));
 
        if (_guess == answer) {
            (bool sent,) = msg.sender.call{value: 1 ether}("");
            require(sent, "Failed to send Ether");
        }
    }
}

