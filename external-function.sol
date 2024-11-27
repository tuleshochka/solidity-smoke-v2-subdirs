// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractWithFunctionNotCalled {

    function funcCalled() public { //ok

    }

    function funcNotCalled2() public { //bug

    }

    function funcNotCalled() public { //bug

    }

    function my_func() internal returns(bool){
        test();
        funcCalled();
        return true;
    }

}
