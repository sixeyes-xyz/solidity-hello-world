// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Intro{
  string public name;
  uint age;

  construct(string memory _name, uint _age){ //initialize 'age' and 'name' as parameters (note: uint is automatically:
    age = _age;
    name = _name;
  }
  function DecadeLater() public view returns(uint){ //function 'DecadeLater" adds age inputted + 10 
    return age + 10; 
  }
}

