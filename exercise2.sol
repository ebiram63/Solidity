// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract StartVariable{
    int a = 10;
    bool b = true;
    string c = "Hello World!";



    function get_a() public view returns (int){
        return a;
    }

    function get_b() public view returns (bool){
        return b;
    }

    function get_c() public view returns (string memory){
        return c;
    }
}