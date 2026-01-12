// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    //Basic types: bool, uint, int, address, bytes
    uint256 public myfavoriteNumber;// initialized to zero

    //uint256 listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoritNumber;

    //Person public pat = Person({favoriteNumber: 1, name: "Pat"});

    function store (uint256 _favoriteNumber) public virtual {
        myfavoriteNumber = _favoriteNumber;

    }

//view, pure - these disallow any modification or updating of state
    function retrieve () public view returns(uint256) {
        return myfavoriteNumber;

    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoritNumber[_name] = _favoriteNumber;
    }

}