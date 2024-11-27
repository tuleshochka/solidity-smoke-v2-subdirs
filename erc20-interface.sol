// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.26; 

interface IERC20 {
        //rule-id: erc20-interface
        function totalSupply() external view returns (bool);
        //rule-id: ok
        function balanceOf(address account) external view returns (uint256);
        //rule-id: erc20-interface
        function transfer(address recipient, uint256 amount) external returns (uint256);
        //rule-id: ok
        function allowance(address owner, address spender) external view returns (uint256);
        //rule-id: ok
        function approve(address spender, uint256 amount) external returns (bool);
        //rule-id: ok
        function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}