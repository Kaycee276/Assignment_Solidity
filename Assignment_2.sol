// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    uint public num1;

    constructor(uint _num1) {
        num1 = _num1;
    }
}

contract Y {
    uint public num2;

    constructor(uint _num2) {
        num2 = _num2;
    }
}
contract Calculator is X, Y{
    uint private _num1;
    uint private _num2;
    constructor(uint num1, uint num2) X(num1) Y(num2){
        _num1 = num1;
        _num2 = num2;
    }

    function Add()public view returns (uint) {
        return _num1 + _num2;
    }

    function Sub() public view returns (uint)  {
        return _num1 - _num2;
    }

    function Mul() public view returns (uint) {
        return _num1 * _num2;
    }
}
