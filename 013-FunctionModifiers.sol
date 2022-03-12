// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract FunctionModifiers{

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier only20(uint age){
        require(age == 20, "Only 20 is allowed");
        _;
    }

    modifier onlyOwner(){
        require(owner == msg.sender, "Only owner can do this action");
        _;
    }

    function enter(uint age) public pure only20(age) returns(bool) {
        return true;
    }

    function getBalance() public view onlyOwner returns(uint) {
        return msg.sender.balance;
    }

    function updateOwner() public {
        owner = msg.sender;
    }


}