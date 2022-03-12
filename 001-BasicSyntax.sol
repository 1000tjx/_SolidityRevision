// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import * as Enums from "./999-constant_enums.sol";

contract BasicSyntax{
    uint sotredData;
    Enums.Statuses public currentState = Enums.Statuses.Pending;

    function set(uint _data) public {
        sotredData = _data;
    }

    function setCurrentState(Enums.Statuses newState) public {
       currentState = newState;
    }

    function get() public view returns (uint) {
        return sotredData;
    }
}