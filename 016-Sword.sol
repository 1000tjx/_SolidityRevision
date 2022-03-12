// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Sword{
    string name;
    uint8 damage;
    uint price = 2 ether;

    address payable public owner;

    constructor(string memory _name, uint8 _damage){
        name = _name;
        damage = _damage;
        owner = payable(msg.sender);
    }


    modifier costs{
        require(msg.value >= price, "not enough balance");
        _;
    }

    receive() external payable costs{
        owner.transfer(msg.value);
        owner = payable(msg.sender);
    }

}