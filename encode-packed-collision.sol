// SPDX-License-Identifier: GPL-3.0 

pragma solidity >= 0.4.16 < 0.9.0;

contract Test {
  
  function f(string memory a, bytes memory b) public pure returns (bytes32) {
    // ruleid: encode-packed-collision
    return keccak256(abi.encodePacked(a, b));
  }

  function f2(bytes memory a, bytes memory b) public pure returns (bytes32) {
    // ruleid: encode-packed-collision
    bytes memory x = abi.encodePacked(a, b);
    return keccak256(x);
  }
}