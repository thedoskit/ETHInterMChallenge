// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalFunctionsExample {
    // Global function to get the current block timestamp
    function getCurrentTimestamp() public view returns (uint256) {
        return block.timestamp;
    }

    // Global function to get the sender address
    function getSenderAddress() public view returns (address) {
        return msg.sender;
    }

    // Global function to get the contract address
    function getContractAddress() public view returns (address) {
        return address(this);
    }

    // Global function to get the gas price of the current transaction
    function getGasPrice() public view returns (uint256) {
        return tx.gasprice;
    }

    // Global function to get the origin address
    function getOriginAddress() public view returns (address) {
        return tx.origin;
    }

    function getBlockDifficulty() public view returns(uint256) {
        return block.difficulty;
    }

    
}
