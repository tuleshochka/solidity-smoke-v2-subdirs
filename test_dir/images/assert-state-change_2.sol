// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {

  uint s_a;

  function bad() public {
    assert((s_a += 1) > 10); //bug
  }
}
