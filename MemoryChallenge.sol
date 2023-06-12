pragma solidity ^0.8.0;

contract StorageAndMemoryChallenge {
    uint256 public storedData; // Storage variable to store data permanently
    
    function modifyStorageData(uint256 newData) external {
        storedData = newData; // Modifies the value of storedData
    }
    
    function readMemoryData(uint256[] memory dataArray) external pure returns (uint256) {
        uint256 sum = 0; // Variable to store the sum of array elements
        
        // Loop through the array and calculate the sum
        for (uint256 i = 0; i < dataArray.length; i++) {
            sum += dataArray[i]; // Add the current element to the sum
        }
        
        return sum; // Return the sum
    }
}
