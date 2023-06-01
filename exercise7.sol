//SPDX-License-Identifier: MIT
pragma solidity>0.7.0 <0.9.0;

contract testenum{
    enum box_size{small,medium,well_done}

    box_size box;

    function set_small() public{
        box = box_size.small;
    }

    function set_medium() public{
        box = box_size.medium;
    }

    function set_well_done() public{
        box = box_size.well_done;
    }

    function get_box_size() public view returns(box_size){
        return box;
    }
}