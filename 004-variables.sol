// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Variables{
    // STATE VARS
    uint storedData; // state variable
    constructor(){
        storedData = 12; // using state variable
    }

    // LOCAl VARS
    function localVar() public pure returns(uint){
        uint lll = 19;
        return lll;
    }

    // GLOBA VARS
    /*
        blockhash
        block
        msg
        tx
        gasleft
        
    */
}