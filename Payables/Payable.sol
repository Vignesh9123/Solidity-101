// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Payable{
    uint amount;

    constructor(){
        amount = 0;
    }

    function pay() public payable {
        amount += msg.value;
    }

    function getValue() public view returns (uint){
        return amount;
    }

    function drain(address payable recipient) public{
        recipient.transfer(amount);
    }
}