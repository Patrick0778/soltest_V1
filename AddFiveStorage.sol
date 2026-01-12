// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "SimpleStorage_V2.sol";

contract AddFiveStorage is SimpleStorage{

    // function sayHello() public pure returns(string memory) {
    //     return "Hello";
    // } 

    function store(uint _newNumber) public override {
        myfavoriteNumber = _newNumber + 5;
    }

}