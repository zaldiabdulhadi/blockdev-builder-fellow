// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataKompleks {
    // Mapping
    mapping(address => uint256) public balances;

    // Array
    int256[] private nums;

    // Struct
    struct User {
        string name;
        uint8 umur;
        bool aktif;
    }

    User user;
}