// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract A {
    mapping (address => uint256) public userBalance;

    function deposit() public payable virtual {
        userBalance[msg.sender] += msg.value;
    }
}

contract B is A {
    function deposit() public payable override  {
        userBalance[msg.sender] += msg.value;
    }
}