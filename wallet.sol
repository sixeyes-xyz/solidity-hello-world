// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet{
  mapping(address => uint) public balances; // stores balances
  
  receive() external payable{
    balances[msg.sender] += msg.value; adds to user's value
  }


function balance() public view returns (uint){
  return balances[msg.sender];        // returns the users balance
}
  
  function withdraw(uint amount) public{
    require(balances[msg.sender] >= amount, "No sufficient funds"); // ensures that user cannot withdraw more than what they own

    balances[msg.sender] -= amount;     // removes funds
    payable(msg.sender).transfer(amount); // transfers funds
  }

}
