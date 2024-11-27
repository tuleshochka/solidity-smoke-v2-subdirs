// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract Locked{
    //rule-id: locked-ether
    function receive() payable public {}

}

contract Payable {
    // Payable address can receive Ether
    address payable public owner;
    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    //rule-id: locked-ether
    function deposit() public payable {}

    // Call this function along with some Ether.
    // The function will throw an error since this function is not payable.
    //rule-id: locked-ether
    function notPayable() public {}

    // Function to withdraw all Ether from this contract.
    function withdraw() public {
        // get the amount of Ether stored in this contract
        uint amount = address(this).balance;
        // send all Ether to owner
        // Owner can receive Ether since the address of owner is payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // Function to transfer Ether from this contract to address from input
    //rule-id: ok
    function deposit_transfer(address payable to, uint amount) public payable{
          // Note that "to" is declared as payable
        to.transfer(amount);//2300 gas
    }
    //rule-id: ok
    function deposit_send(address payable to, uint amount) public payable{
          // Note that "to" is declared as payable
        bool sent=to.send(amount);//2300 gas
        require(sent,"failure to send ether");
    }
    //rule-id: ok
    function deposit_call(address payable to, uint amount) public payable{
          // Note that "to" is declared as payable
        (bool sent, bytes memory data)=to.call{gas: 25000, value:amount}("");//set max gas limit as 25000 gas
        require(sent,"failure to send ether");
    }
}

pragma solidity ^0.8.0;
contract ReceiveEther {

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
contract SendEther {
    //rule-id: ok
    function sendViaTransfer(address payable to) public payable {
        // This function is no longer recommended for sending Ether.
        to.transfer(msg.value);
    }
    //rule-id: ok
    function sendViaSend(address payable to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = to.send(msg.value);
        require(sent, "Failed to send Ether");
    }
    //rule-id: ok
    function sendViaCall(address payable to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}