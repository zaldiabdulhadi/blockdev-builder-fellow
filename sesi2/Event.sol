// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

error ReturnValues_NotOwner(address caller);

contract Event {
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

    mapping(address => uint256) public balances;
    event Deposit(address indexed user, uint256 amount);

    function deposit() external payable {
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, ReturnValues_NotOwner(msg.sender));
        _;
    }

    function withdraw() external payable onlyOwner {
        // Transfer Logic Code
        balances[msg.sender] += msg.value;
    } 
}