// SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

contract if_Solidity{
    constructor() public {
      uint val_wallet;  
      val_wallet = 1000;   
   }
    function AirDrop(uint val_wallet) public view returns(uint){
        if(val_wallet < 5000){
            return val_wallet + 1000;
        }else{
            return val_wallet + 100;
        } 
    } 


}