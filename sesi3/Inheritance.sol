// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

error Ownable_NotOwner();

contract Ownable {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, Ownable_NotOwner()); _;
    }
}

contract MyToken is Ownable {
    function mint() public onlyOwner {
        // Code;
    }
}