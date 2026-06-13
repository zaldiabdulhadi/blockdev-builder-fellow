// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

error SimpleBank_FundKurang();
error SimpleBank_GagalWithdraw();

contract SimpleBank {
    bool public paused;
    address owner;

    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() { require(msg.sender == owner,"Not owner"); _; }
    mapping(address => uint256) public balances;

    // modifier CheckBalances(uint256 amount) {
    //     require(balances[msg.sender] < amount);
    //     _
    // }

    modifier Checkbalances(uint256 amount) {
        require(balances[msg.sender] >= amount, SimpleBank_FundKurang());
        _;
    }

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external payable Checkbalances(amount) {

        (bool success, ) = msg.sender.call{value:amount}("");      

        if(!success) {
            revert SimpleBank_GagalWithdraw();
        }  

        balances[msg.sender] -= amount;
    }

    function setPaused(bool _p) external onlyOwner { paused = _p; }
}