// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Mappings{
    mapping(address => uint) public balances;
    
    function addMyBalance() public {
        balances[msg.sender] = msg.sender.balance;
    }
}