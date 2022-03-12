// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;


abstract contract BaseA{
    uint public data = 10;
    constructor(){
        data = 15;
    }
    function add(uint a, uint b) public virtual returns(uint);
}

contract A is BaseA{
    function add(uint a, uint x) public override pure returns(uint){
        return a + x;
    }
}