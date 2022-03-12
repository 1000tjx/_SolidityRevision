// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract Loops{
    uint public loopSum;
    // while loop
    function applyWhileLoop() public{
        uint8 i = 0;
        while(i < 10){
            loopSum += i;
            i++;
        }
    }

    // do while loop
    function applyDoWhile() public {
        uint8 i = 3;
        do{
            loopSum += i;
            i++;
        }while(i <= 5);
    }

    // for loops
    function applyForLoop() public{
        for(uint8 i = 0; i <= 5; i++){
            if(i == 2) continue;
            if(i == 4) break;
            loopSum += i;

        }
    }

}