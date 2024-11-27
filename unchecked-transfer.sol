// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Token {
   function transferFrom(address _from, address _to, uint256 _value) virtual public returns (bool success); //ok
}

contract MyBank{
    mapping(address => uint) balances;
    Token token;
    function deposit(uint amount) public{
        token.transferFrom(msg.sender, address(this), amount); //bug
        balances[msg.sender] += amount;
    }
}

contract ToBank{
    mapping(address => uint) balances;
    Token token;
    function deposit(uint amount) public{
        bool res=token.transferFrom(msg.sender, address(this), amount);//ok
        balances[msg.sender] += amount;
        require(res);
    }
}

contract ToBank1{
    mapping(address => uint) balances;
    Token token;
    function deposit(uint amount) public{
        bool res=token.transferFrom(msg.sender, address(this), amount); //ok
        balances[msg.sender] += amount;
        if(!res){

        }
    }
}