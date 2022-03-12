// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


enum Gender {male, femal}


contract Enums{
    Gender studentGender = Gender.male;

    function getGender() public view returns (Gender) {
        return studentGender;
    }

    function setStudentGender(Gender _gender) public {
        studentGender = _gender;
    }
}