
// SPDX-License-Identifier: MIT
pragma solidity 0.8.21 ;

contract stat{
    uint public age=10;
    string public name;
    uint rollNo=18;
    uint[] public students;
    uint[3] public  arr;
    uint public counter = 0;
   
    constructor()  {
age=90;
    }
    function setAge() public {
        age=9000;
    }
    function setName(string memory _name) public  returns(string memory)   {
         name=_name;
        return name;
    }

           function getter() view public returns(uint){
     return rollNo;
    }
    function setter(uint _roll) public returns(uint){
        rollNo=_roll;
        return rollNo;
    }
    function addStudent(uint _index,uint _value) public {
        students[_index]=_value;
    }
    function pushElement(uint item) public {
    students.push(item);
    }
     function popElement() public {
    students.pop();
    }
function loop() public{
while(counter < arr.length){
arr[counter] = counter;
counter++;
}
}
function check(int a) public pure returns(string memory){
     string memory value;
    if(a==0){
      value="equal to zero";  
    }
else if(a<0){
    value="less than 0";
}
else{
    value="greater than 0";
}
    return value;
}
}
