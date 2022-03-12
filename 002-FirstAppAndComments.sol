// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// single line comment

/*
    double line comment
    line2
    line3
*/
contract FirstApp{
    constructor() {
        // call only once, when the contract is deployed
    }

    function getResults() public pure returns(uint) {
        uint a = 1;
        uint b = 2;
        uint results = a + b;
        return results;
    }
}