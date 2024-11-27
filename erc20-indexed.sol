// SPDX-License-Identifier: GPL-3.0 

pragma solidity >= 0.4.16 < 0.9.0;

contract ERC20Bad {

    //rule-id: erc20-indexed
    event Transfer(address from, address to, uint value);
    //rule-id: erc20-indexed
    event Approval(address owner, address spender, uint value);

}