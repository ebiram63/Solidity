//SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract error_solidity{
    string public checksum = "1";

    function update_checksum(uint test) public view returns(string memory){
        if(test % 2 == 0){
            return checksum;
        }
        else{
            return "msg.value is odd";
        }
    } 
}