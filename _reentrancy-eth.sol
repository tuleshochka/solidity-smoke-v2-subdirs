// SPDX-License-Identifier:  MIT
pragma solidity ^0.8.0;

contract Reentrance {
    mapping (address => uint) userBalance;

    function getBalance(address u) public view returns(uint){
        return userBalance[u];
    }

    function addToBalance() payable public{
        userBalance[msg.sender] += msg.value;
    }

    function withdrawBalance() public {
        // send userBalance[msg.sender] ethers to msg.sender
        // if mgs.sender is a contract, it will call its fallback function
        (bool error, )=msg.sender.call{value: userBalance[msg.sender]}("");
        if( !error ){
            revert();
        }
        userBalance[msg.sender] = 0;
    }

    function withdrawBalance_fixed() public{
        // to protect against re-entrancy, the state variable
        // has to be change before the call
        uint amount = userBalance[msg.sender];
        userBalance[msg.sender] = 0;
        (bool error, )=msg.sender.call{value: amount}("");
        if(!error){
            revert();
        }
    }

    function withdrawBalance_fixed_2() public {
        // send() and transfer() are safe against reentrancy
        // they do not transfer the remaining gas
        // and they give just enough gas to execute few instructions
        // in the fallback function (no further call possible)
        address payable dest = payable(msg.sender);
        dest.transfer(userBalance[msg.sender]);
        userBalance[msg.sender] = 0;
    }

}