// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Structs{
    struct Student{
        string name;
        uint8 age;
        string school;
    }

    Student public s1 = Student("Student ABCD", 18, "UniSchool");
}