// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Arrays{
    uint[] balances;
    // static Arrays
    uint[2] public staticArray = [12, 13]; // cant push new values to statick length arrays

    constructor(){
        staticArray[0] = 15;
        staticArray[1] = 17;
    }

    function addBalance(uint _balance) public {
        balances.push(_balance);
    }

    function balancesCount() public view returns(uint){
        return balances.length;
    }

    function balancesSum() public view returns(uint){
        uint total;
        for(uint i = 0; i < balances.length; i++){
            total += balances[i];
        }

        return total;
    }
}