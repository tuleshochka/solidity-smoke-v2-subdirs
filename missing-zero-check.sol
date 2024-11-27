// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.4.24;

contract C {

  address owner;

  modifier onlyAdmin {
    if (msg.sender != owner) throw;
    _;
  }

  function updateOwner(address newOwner) onlyAdmin external {
    owner = newOwner;
  }
}