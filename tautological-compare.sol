// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.24;

contract Test {
    //rule-id:tautological-compare
    function check1(uint a) external returns(bool){
        return (a >= a);
    }
    //rule-id:tautological-compare
    function check2(uint a) external returns(bool){
        return (a == a);
    }
    //rule-id:ok
    function check3(uint a, uint b) external returns(bool){
        return (a <= b);
    }
    //rule-id:tautological-compare
    function check4(uint a) external returns(bool){
        return (a < a);
    }
    //rule-id:tautological-compare
    function check5(uint a) external returns(bool){
        return (a > a);
    }
    //rule-id:tautological-compare
    function check6(uint a) external returns(bool){
        return (a != a);
    }
    //rule-id:tautological-compare
    function check7 (uint a) external {
        if (a > a) {
            
        }
    }

}