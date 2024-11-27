// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVarInitFromFunction {

    uint public v = set(); // Initialize from function (sets to 77) bug
    uint public w = 5;
    uint public x = set(); // Initialize from function (sets to 88) bug
    address public shouldntBeReported = address(8); //ok

    constructor(){
        // The constructor is run after all state variables are initialized.
    }

    function set() public  returns(uint)  {
        // If this function is being used to initialize a state variable declared
        // before w, w will be zero. If it is declared after w, w will be set.
        if(w == 0) {
            return 77;
        }

        return 88;
    }
}
