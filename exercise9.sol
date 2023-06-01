//SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

contract teststruct{
    struct wallet_detail{
        uint amount;
        address wallet;
        uint time;
        string name;
    }
    wallet_detail public ebi_wallet;

    function update_wallet(uint _amount, string memory _name) public{
        ebi_wallet.amount =  _amount;
        ebi_wallet.wallet = msg.sender;
        ebi_wallet.time = block.timestamp;
        ebi_wallet.name = _name;

    } 

} 