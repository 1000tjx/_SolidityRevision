// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract FlowControl{
    function isEven(uint number) public pure returns(bool){
        if(number % 2 == 0) return true;
        else return false;
    }
    
    function isEvenV2(uint number) public pure returns(bool){
        return (number % 2 == 0);
    }

    function gradeLetter(uint grade) public pure returns(string memory){
        if(grade >= 90){
            if(grade <= 95){
                return "A";
            }else{
                return "A+";
            }
        } else if(grade >= 80){
            return "B";
        } else if(grade >= 70){
            return "C";
        }else if(grade >= 50){
            return "D";
        } else {
            return "F";
        }
    }
}