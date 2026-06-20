// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TipeVariabel {
    // Integer
    int32 integer;
    uint UnsignedInteger;

    // String
    string String;

    // Address
    address Adress;

    // Boolean
    bool Boolean;

    // Bytes
    bytes Bytes;

    uint256 a = 0.5 ether; // 0.5 * 10^17 wei
    uint256 b = 1 gwei;
    uint256 c = 1 wei;

    uint8 Minute = 1 minutes; // minutes * 60 (Disimpan dalam satuan detik)
    uint256 Hour = 1 hours; // 24 * 60 (Disimpan dalam satuan detik)
    uint256 Day = 1 days; // 24 * 60 * 60 (Disimpan dalam satuan detik)
    uint256 Week = 1 weeks; // 7 * 24 * 60 * 60 (Disimpan dalam satuan detik)
}