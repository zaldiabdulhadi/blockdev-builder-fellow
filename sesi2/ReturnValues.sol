// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ReturnValues {
    address public owner;

    constructor() {
        owner = msg.sender;
    } 
    
    function getInfo() public pure returns (string memory, uint) {
        return ("Budi", 25);
    }

    function get() public pure returns (string memory nama, uint umur) {
        nama = "Budi"; umur = 25;
    }
}