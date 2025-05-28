// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2; //stating version of the solidity compiler used to compile this contract

 contract SimpleStorage {
 
        struct Person {        // learned struct, helps define a specific piece of data
            uint256 favoriteNumber;   
            string name; 
        }

    Person[] public listOfPeople;

    mapping(string => uint256) public searchName; // points string (names) to uint256 (favorite numbers)

    function pushPerson(string memory _name, uint256 _favoriteNumber) public{   // define local variables
        listOfPeople.push(Person(_favoriteNumber, _name));      //push people into my 'listOfPeople'
        searchName[_name] = _favoriteNumber; // allows it so when you search name it shows their favorite number
    }
 } 
