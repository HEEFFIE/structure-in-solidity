// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract local{
    bool public  value= true;
    function check(uint _a) public  returns(bool){
        if(_a<100){
            value=false;
            return value;
        }
        else if(_a>100){
value=true;
return value;
        }
    }
}
