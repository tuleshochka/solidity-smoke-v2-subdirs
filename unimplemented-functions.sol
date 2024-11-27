// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface BaseInterface {
    function f1() external returns(uint);
    function f2() external returns(uint);//bug
}

interface BaseInterface2 {
    function f3() external returns(uint); //bug
}

contract DerivedContract is BaseInterface, BaseInterface2 {
    function f1() external returns(uint){
        return 42;
    }
}
