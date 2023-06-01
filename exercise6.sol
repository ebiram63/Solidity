//SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

contract testBytes{
    string private hello_str = "SalamSolidity";

    bytes13 public hello = "SalamSolidity";


    function get_name() public view returns(string memory){
        return hello_str;
    }

    function change_name(bytes13 i) public{
        hello = i;
    }

    function get_name_length() public view returns(uint){
        return hello.length;
    }


}