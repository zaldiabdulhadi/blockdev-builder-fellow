// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("Prabowo", "PBW") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000_000 * 10 ** 17);
    }

    function mint(address to, uint256 amout) public onlyOwner {
        _mint(to, amout);
    }
}
