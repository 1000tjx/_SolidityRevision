// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Events{
    uint data;
    // declare Event
    event DataUpdated(address sender, uint value);

    function increament() public {
        data++;
        emit DataUpdated(msg.sender, data);
    }
}