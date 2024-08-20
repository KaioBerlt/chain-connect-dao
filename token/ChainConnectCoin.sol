// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ChainConnectCoin is ERC20("ChainConnectCoin", "CHAIN$"), Ownable {
    // Initial supply
    uint256 private constant INITIAL_SUPPLY = 1000000 * 10**18;

    constructor() Ownable(msg.sender) {
        // Mint initial supply to the deployer
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    // Function to mint new tokens
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens
    function burn(uint256 amount) external onlyOwner {
        _burn(msg.sender, amount);
    }
}