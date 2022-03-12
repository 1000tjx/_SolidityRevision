// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Functions{
    uint8 data = 12;

    function getData() public view returns(uint8){
        return data;
    }
    
    function getData2() public view returns(uint8, uint){
        return (data, getSum(2, 2));
    }

    function getSum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}