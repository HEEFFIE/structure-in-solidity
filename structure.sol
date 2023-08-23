// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
struct Student{
    uint roll;
    string name;
}
contract local{
    Student public s1;
    constructor(uint _roll,string memory _name)  {
s1.roll=_roll;
s1.name=_name;
    }
//change the existing values
function change(uint _roll, string memory _name) public{
    Student memory new_student=Student({
        name:_name,
        roll:_roll
    });
    s1=new_student;
}

}

