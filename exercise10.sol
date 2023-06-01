//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract exerciseTest{
    constructor(){
        if(Time_call() - blocktimestamp() >= 60){
            return "initializing";
        }
        else{
            return "done";
        }

    }

    function Time_call() public returns (uint256){
        return now;
    }
        function blocktimestamp() public view returns(uint){
        return block.timestamp;
    }
}