// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
struct Student{
string name;
uint class;
}

contract local{
// mapping (uint=>string) public roll_no;
// function setter(uint keys,string memory value) public {
//     roll_no[keys]=value;
// }
mapping (uint=>Student) public s1;

 function setter(uint roll,uint _name,string memory _class) public {
   s1[roll]=Student(_class,_name);
 }

}
