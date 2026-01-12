//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";
import {SimpleStorage} from "SimpleStorage_V2.sol";

contract StorageFactory {

    //type visibility name
    SimpleStorage[] public listOfsimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        // simpleStorage = new SimpleStorage();
        listOfsimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint _newSimpleStorage) public {
        //Address
        //ABI- Application binary interface
        SimpleStorage mySimpleStorage

    }
}