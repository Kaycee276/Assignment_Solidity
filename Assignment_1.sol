// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Counter {
    uint number;

    function increment() public {
        number += 1;
    }

    function decrement() public {
        number -= 1;
    }

    function getNumber() public view returns (uint){
        return number;
    }
}