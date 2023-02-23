// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    // boolean, uint ,int ,address, bytes
    // bool hasFaviriteNumber = true;
    // uint256 num = 100;
    // string str = 'str';
    // address myAdd = 0xE4a32511E65e5d3D5FaBf55F0ae9371FA4c58f5f;
    uint256 public favoriteNumber; // this gets initialized to zero!

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }


}
