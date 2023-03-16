// SPDX-License-Identfier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 favoriteNumber;
    bool favoriteBool = false;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favoriteAddress = 0xfC8829a8C4910620950b97E888Da17241EC38f14;
    bytes32 favoriteBytes = "cat";

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    //People public person = People({favoriteNumber: 2, name: "Patrick"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    //function retrieve2(uint256 favoriteNumber) public pure{
    //    favoriteNumber + favoriteNumber;
    //}

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
