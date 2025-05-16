// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bank{
  address public owner; // create address named owner
  
  constructor(){
    owner = msg.sender; // initializes 'owner' to the deployer
  }
  receive() external payable{} // allows for payments to be accepted

  function withdraw() public{
    require(owner == msg.sender, "You aren't the owner"); // requires so that the receiver is the owner
    payable(owner).transfer(address(this).balance);  // transfers withdrawal; ERROR FIXED: from (account(this).balance) to (address(this).balance)
  }
  function balance() public view returns (uint){ // function to view balance, returning a uint
      return (address(this).balance); // returns balance

//fixed some casing; withDraw to withdraw; Bank to bank
  }
}
