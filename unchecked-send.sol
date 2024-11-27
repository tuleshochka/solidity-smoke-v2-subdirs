// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyConc{
    function sendWithoutControl(address payable dst) public payable{
        dst.send(msg.value); //bug
    }

    function sendWithoutControl1(address payable dst) public payable{
        bool res=dst.send(msg.value); //bug
        if (msg.value>100){
            uint mount=msg.value;
        }
    }

    function sendWithoutControl2(address payable dst) public payable{
        bool res=dst.send(msg.value); //ok
        if (!res){
            uint mount=msg.value;
        }
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        bool sent = _to.send(msg.value); //ok
        require(sent, "Failed to send Ether");
    }

    function sendWithoutControl3(address payable dst) public payable{
        bool res=dst.send(msg.value); //bug
    }
}