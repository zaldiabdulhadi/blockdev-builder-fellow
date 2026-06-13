// SPDX-License-Identifier: MIT      
pragma solidity ^0.8.20;            

contract HelloWorld {
    string public greeting;

    constructor(string memory _g) {
        greeting = _g;
    }

    function setGreeting(string calldata _g) external {
        greeting = _g;               // ubah state -> bayar gas
    }
}