//SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

contract testarray{
    uint[] public wallet_value = [0];
    address public wallet_address;

    constructor (){
        wallet_address = msg.sender;
    }

    function arrayPop() public{
        if(wallet_value.length != 0){
            wallet_value.pop();
        }
    }

    function arrayPush(uint q) public{

        for(uint i =0; i<wallet_value.length; i++){
            if(wallet_value[i] != q){
                wallet_value.push(i);
            } 
        }
    }


    function transferOwnership(address newOwner) public {
        delete wallet_address;
        wallet_address = newOwner;
    }
}