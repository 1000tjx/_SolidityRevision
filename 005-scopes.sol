// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// public
// internal
// private


contract C{
    uint public data = 10;
    uint internal iData = 15;
    uint private pData = 99;

    function x() public returns(uint) {
        data = 3; // internal access
        return data;
    }

    function p() public view returns (uint){
        return pData;
    }
}

contract Caller{
    C c = new C();
    function f() public view returns (uint) {
        return c.data(); // external access
    }
}

contract D is C{
    uint zz;
    
    function y() public returns(uint){
        iData = 25;
        zz = iData;
        return iData;
    }

    function z() public view returns(uint){
        return zz;
    }
}