// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Define the contract DonationTracker.
contract DonationTracker{

    constructor() payable {
        
    }

    // Create an array donors to store the list of donor addresses.
    address[]  donorAddress;

    // Create a mapping donations to store the amount of Ether donated by each address.
    mapping (address => uint) Donations;

    //  Implement a donate function that is payable and updates the array and mapping.
    function donate() public payable {

        require(msg.value > 0, "You have to make a donation");

        Donations[msg.sender] += msg.value;

    }
    
    // a function to retrieve the total donations made by a specific address.
    function getDonationAmount(address donor) public view returns(uint){
        return Donations[donor];
    }

    // A fallback function to handle direct transfers to the contract.

    fallback() external  payable { 
        donate();
    }
    receive() external payable { }



}

