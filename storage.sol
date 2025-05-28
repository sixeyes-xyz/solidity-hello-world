// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2; //stating version of the solidity compiler used to compile this contract

 contract SimpleStorage {
 
        struct Person {        // learned struct, helps define a specific piece of data
            uint256 favoriteNumber;   
            string name; 
        }

    Person[] public listOfPeople;

    function pushPerson(string memory _name, uint256 _favoriteNumber) public{   // define local variables
        listofPeople.push(Person(_favoriteNumber, _name));      //push people into my 'listOfPeople'
    }
 } 
