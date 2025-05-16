// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendUser{    // Just learnt that contracts should always be in what is called 'PascalCase', so that's whats I'll do from now on.
  function sendEth(address payable _to) public payable{    // creates an address _to (to which one would have to enter the address), and makes it payable
    _to.transfer(msg.value); // msg.value is the ETH sent by user
  }
}
