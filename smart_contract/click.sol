// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ClickCounter {
    // Counter variable to store the total number of clicks
    uint256 public clickCount;

    // Mapping to track individual user click counts
    mapping(address => uint256) public userClicks;

    // Event to log each click event
    event Click(address indexed user, uint256 clicks);

    // Function to connect the wallet
    function connectWallet() external {
        // You may implement any wallet connection logic here
        // For simplicity, let's assume connecting a wallet is automatic
    }

    // Function to get the global click count
    function getGlobalClickCount() external view returns (uint256) {
        return clickCount;
    }

    // Function to get the user's click count
    function getUserClickCount() external view returns (uint256) {
        return userClicks[msg.sender];
    }

    // Function to increment the click count
    function click() external {
        // Increment the global click count
        clickCount++;

        // Increment the user's click count
        userClicks[msg.sender]++;

        // Emit the Click event
        emit Click(msg.sender, userClicks[msg.sender]);
    }
}
