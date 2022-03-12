// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract STypes{

    // most using types

    // booleans : logical operators
    bool amIAProgrammer = true;
    bool amIADesigner = false;
    
    
    // integers: uint = unsigned , int = signed number
    /*
        interers can take this operators:
        1 - Comparisons:  >, <, <=, >=, ==
        2 - Bit operators: &, |, ^. ~
        3 - shift operators: >>, <<
        4 - Arithmatic operators: +, -, *, /, %, ** (exp)
    */
    uint n; 
    uint8 n8;
    uint16 n16;
    uint32 n32;
    uint64 n64;
    uint128 n128;
    uint256 n256;

    // address: holds eth address (20)
    // address : with 2 memebers, (transfer, send)
    address cantSendEther;
    address payable canSend;
    uint public balance = msg.sender.balance;


    // Strings
    string name = "Jhon Doe";


    // bytes
    bytes b = "Hello";
    bytes b2 = "All";

    // arrays
    bytes[] public bb = [b, b2];
    string public s0 = string(bb[0]);
    string public s1 = string(bb[1]);


    // enums
    enum Statuses {S1, S2}


    // structs
    struct Student{
        string name;
        uint8 age;
        string school;
    }

    Student public student = Student("StudentABCD", 120, "Harvard");


    // mappings
    mapping(string => string) public namesDesc;

}