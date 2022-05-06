// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 <0.9.0;

contract SimpleStorage {

    // Data structures
    uint256 public favoriteNumber;
    bool favoriteBool;
    // bool favoriteBool = true;
    // string favoriteString = "String"
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0x594385902348523432984903824230948230543524;
    // bytes32 favoriteBytes = "cat";

    // Structures
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Initalization
    // People public person = People({favoriteNumber: 2, name: "Botir"});

    // Array
    People[] public people; // dynamic array
    People[1] public fixedpeople; // fixed array

    // Mappings
    mapping(string => uint256) public nameToFavoriteNumber;

    // Functions
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        uint256 test = 4;
    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }


}