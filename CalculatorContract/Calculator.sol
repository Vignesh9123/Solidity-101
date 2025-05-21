// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract Calculator{
    int num; 

    constructor(int _num) { // Runs when the contract is deployed (Cannot be deployed if input is not given)
        num = _num;
    }

    function add(int _value) public {
        num+=_value;
    }
    function subtract(int _value) public {
        num-=_value;
    }
    function multiply(int _value) public {
        num*=_value;
    }
    function divide(int _value) public {
        num/=_value;
    }

    function getNum() public view returns (int) { // view -> cannot modify state, just read state (Also cannot call a function that modifies state)
        return num;
    }

}

