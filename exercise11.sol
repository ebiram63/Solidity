//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;


contract exerciseModifiers{
    address public owner;
    address public zero = address(0);
    uint public owner_balance = address(owner).balance;
    constructor(){
        owner = msg.sender;
    }


    modifier testOwner(address testAddress){
        require(testAddress != address(0) , "It is burn address ");
        _;
    }

        modifier onlyOwner{
        require(msg.sender == owner, "Access denied");
        _;

    }

            modifier balanceCHeck(address new_owner){
        require(address(new_owner).balance > owner_balance , "The amount of balance is low");
        _;

    }

    function changeOwner(address new_owner)public onlyOwner testOwner(new_owner) balanceCHeck(new_owner){
        owner = new_owner;
    }
}