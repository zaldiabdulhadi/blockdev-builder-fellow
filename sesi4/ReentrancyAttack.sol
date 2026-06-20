// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Victim {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public payable {
        uint256 amount = balances[msg.sender];

        // Cek Amount apa cukup atau tidak
        if (amount <= 0) {
            revert();
        }

        // Effect (Internal)
        balances[msg.sender] = 0;

        // Interaction (External)
        (bool success, ) = msg.sender.call{value: amount}("");
        if (!success) {
            revert();
        }
    }
}

contract Attacker {
    Victim victim;

    constructor(address _victim) {
        victim = Victim(_victim);
    }

    function attack() public payable {
        victim.deposit{value: msg.value}();
        victim.withdraw();
    }

    receive() external payable {
        if (address(victim).balance >= 1e18) {
            victim.withdraw();
        }
    }
}
