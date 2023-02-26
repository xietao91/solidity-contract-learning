// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    // boolean, uint ,int ,address, bytes
    // bool hasFaviriteNumber = true;
    // uint256 num = 100;
    // string str = 'str';
    // address myAdd = 0xE4a32511E65e5d3D5FaBf55F0ae9371FA4c58f5f;
    uint256 public favoriteNumber; // this gets initialized to zero!
    People public person = People({
        favoriteNumber: 20,
        name:'zhangsan'
    });

    uint256[] favoriteNumberList;
    People[] public personList;
    mapping(string => uint256) public NameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrive() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber,string memory name) public {
        personList.push(People(_favoriteNumber,name));
        NameToFavoriteNumber[name] = _favoriteNumber;
    }

    struct People {
        uint256 favoriteNumber;
        string name;
    }


}
