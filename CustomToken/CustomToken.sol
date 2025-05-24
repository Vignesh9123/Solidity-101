// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract CustomToken{
    address public owner;
    mapping (address => uint) balances;
    uint public totalSupply;
    string public Name = "VigneshCoin";
    string public Symbol = "VIG";
    constructor(){
        owner = msg.sender;
        totalSupply = 0;
    }

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    function mint(uint _value) public onlyOwner {
        require(_value > 0);
        totalSupply+= _value;
        balances[owner] += _value;
    }

    function mintTo(uint _value, address toPubKey) public onlyOwner{
        require(_value > 0);
        totalSupply+= _value;
        balances[toPubKey] += _value;
    }

    function transfer(uint _amount,  address _toPubKey) public {
        require (_amount <= balances[msg.sender]);
        balances[msg.sender] -= _amount;
        balances[_toPubKey] += _amount;
    }

}