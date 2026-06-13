// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mutability {
    uint256 balance = 7;
    function getBalance() public view returns(uint256) {
        return balance;
    }

    function add(uint256 a, uint256 b) public pure returns(uint256) {
        return a + b;
    }

    function deposit() public payable {
        balance = balance + msg.value;
    }
}