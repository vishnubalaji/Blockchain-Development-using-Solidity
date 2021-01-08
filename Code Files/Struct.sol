pragma solidity 0.5.1;

contract MyContract {
   
   struct Person {
       string first_name;
       string last_name;
   }
   
   // Struct is used to represent a record of properties of an object or any entity.
   
   Person[] public people;
   uint256 public peopleCount;
   
   function addPerson(string memory _firstname, string memory _lastname) public {
       peopleCount+=1;
       people.push(Person(_firstname,_lastname)); //.push is used since it's an array.
   }
}
