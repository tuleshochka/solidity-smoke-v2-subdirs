// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract{
  function DOMAIN_SEPARATOR() external view returns(address){
    return msg.sender;
  }
}

contract ContractGood{
  function DOMAIN_SEPARATOR(bytes32 input) external pure returns(bytes32){
    return input;
  }
}