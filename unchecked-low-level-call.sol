// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract MyConc{
    function my_func(address payable dst, uint256 _y) public payable{
        //rule-id: uncheked-low-level-calls
        dst.call{value: msg.value}("");
        //rule-id: uncheked-low-level-calls
        dst.call("");
        //rule-id: uncheked-low-level-calls
        (bool success, ) = dst.call(abi.encodeWithSignature("setY(uint256)", _y));
        require(success, "Call to setY failed");
        //rule-id: uncheked-low-level-calls
        (bool succes, ) = dst.call(abi.encodeWithSignature("setY(uint256)", _y));
    }
}