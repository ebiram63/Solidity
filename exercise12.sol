//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract eventTest{
    address public owner;
    address public zero = address(0);
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "You are not Owner");
        _;
    }


    event checkOwner(string _str);

    event updateOwner(address test);

    event showAmount(uint amount , address test);

    mapping(address => uint) public mapbalance;


    function updateAddress(address test) public onlyOwner{
        if(test != zero){
            owner = test;
        }
        emit updateOwner(test);
    }

    function updateEvent(address test) public{
        if(mapbalance[msg.sender] != test){
            emit checkOwner("not existed");
        }
        emit showAmount(test.balance , test); 
    }


}