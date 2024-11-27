// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.27;

interface ISomething {
    function f1() external returns(uint);
}

contract Something {
    //rule-id: missing-inheritance
    function f1() external returns(uint){
        return 42;
    }
}


interface ISomethingTwo {
    function f1() external returns(uint);
}

contract SomethingTwo is ISomething {
    //rule-id: missing-inheritance
    function f1() external returns(uint){
        return 42;
    }
}