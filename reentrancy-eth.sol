// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Reentrancy {
    address public owner;
    mapping(address => uint256) public balances;
    uint256 public amount;

    event Withdrawal(address indexed from, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function deposit() public {
        require(msg.sender == owner, "Only the owner can deposit");
        balances[msg.sender] += 1 ether;
    }

    //rule-id: ok
    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        uint256 amount = balances[msg.sender];
        balances[msg.sender] = 0;
        msg.sender.call{value: amount}("");
        emit Withdrawal(msg.sender, amount);
    }

    //rule-id: reentrancy-eth
    function arbitraryWithdraw() public {
        uint256 amount = balances[msg.sender];
        msg.sender.call{value: amount}("");
        balances[msg.sender] = 0;
    }
}