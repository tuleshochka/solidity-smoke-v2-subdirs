// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.26;

contract Owner {

    modifier myModif {
        if(false){
           _;
        }
    }

    function get() myModif public returns(uint){

    }
}

contract Owners {
   address owner;

   constructor() public {
      owner = msg.sender;
   }

   modifier onlyOwner {
      require(msg.sender == owner);
      _;
   }
   modifier costs(uint price) {
      if (msg.value >= price) {
         _;
      }
   }
}