// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Intro{
  string public name;
  uint public age;

  constructor(string memory _name, uint _age){ //initialize 'age' and 'name' as parameters (note: uint is automatically: 256
    age = _age;
    name = _name;
  }
  function decadeLater() public view returns(uint){ //function 'decadeLater" adds age inputted + 10 
    return age + 10; 
  }
}

