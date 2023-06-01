//SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

contract testmapping{

    uint public testbalance;
    address public testaddress;
    bool public condition = false;

    
    mapping(address => uint)public balances;

    function updatebalance(address testaddress, uint testbalance) public{
            balances[testaddress] = testbalance;
            condition = true;
        }

}