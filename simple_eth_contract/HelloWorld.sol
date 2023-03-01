// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This is a simple contract that demonstrates some of the key elements of Solidity
contract MyContract {
    // State variables store data on the blockchain
    uint256 public myNumber = 42;
    address public myAddress = address(this);
    string public myString = "Hello, world!";

    // Functions can be called to read or modify the state of the contract
    function setMyNumber(uint256 _newNumber) public {
        myNumber = _newNumber;
    }

    function getMyNumber() public view returns (uint256) {
        return myNumber;
    }

    // Events can be emitted to log important information
    event NumberSet(uint256 newNumber);

    function setMyNumberAndLog(uint256 _newNumber) public {
        myNumber = _newNumber;
        emit NumberSet(_newNumber);
    }
}