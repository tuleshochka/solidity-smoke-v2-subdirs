// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract A {

    address constant public MY_ADDRESS = 0xE0f5206BBD039e7b0592d8918820024e2a7437b9;
    address public myFriendsAddress = 0xc0ffee254729296a45a3885639AC7E10F9d54979;

    uint public used;
    uint public test = 5;

    uint constant X = 32**22 + 8;
    string constant TEXT1 = "abc";
    string text2 = "xyz";

    function setUsed() public {
        if (msg.sender == MY_ADDRESS) {
            used = test;
        }
    }
}


contract B is A {

    address public mySistersAddress = 0x999999cf1046e68e36E1aA2E0E07105eDDD1f08E;

    fallback () external {
        used = 0;
    }

    function setUsed(uint a) public {
        if (msg.sender == MY_ADDRESS) {
            used = a;
        }
    }
}

contract Bad {

    uint constant A = 1;
    bytes32 should_be_constant = sha256('abc');
    uint should_be_constant_2 = A + 1;
    B should_be_constant_3 = B(address(0));
    address should_be_immutable = msg.sender;
    uint should_be_immutable_2 = getNumber();
    uint should_be_immutable_3 = 10 + block.number;
    uint should_be_immutable_5;

	constructor(uint b) {
		should_be_immutable_5 = b;
	}

    function getNumber() public returns(uint){
        return block.number;
    }

}

contract Good {

    uint constant A = 1;
    bytes32 constant should_be_constant = sha256('abc');
    uint constant should_be_constant_2 = A + 1;
    B constant should_be_constant_3 = B(address(0));
    address immutable should_be_immutable = msg.sender;
    uint immutable should_be_immutable_2 = getNumber();
    uint immutable should_be_immutable_3 = 10 + block.number;
    B immutable should_be_immutable_4 = new B();
    uint immutable should_be_immutable_5;
    uint blobBaseFee;
	constructor(uint b) {
		should_be_immutable_5 = b;
	}

    function getNumber() public returns(uint){
        return block.number;
    }

    function updateBlobBaseFee(uint _blobBaseFee) public {
        assembly {
            sstore(blobBaseFee.slot, _blobBaseFee)
        }
    }
}
