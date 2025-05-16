// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Intro{
  string public name;
  uint256 public age;    // uint has been changed to uint256, I read it was better for readability

  constructor(string memory _name, uint256 _age){ //initialize 'age' and 'name' as parameters (note: uint is automatically: 256)
    age = _age;
    name = _name;
  }
  function decadeLater() public view returns(uint){ //function 'decadeLater" adds age inputted + 10 
    return age + 10; 
  }
}

