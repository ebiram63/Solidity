// SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

function inc_amount(int inc_value, int wallet_amount) pure returns(int){
    return inc_value + wallet_amount;
}