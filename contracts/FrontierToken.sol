// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Polka Frontier test token.
// Deploy ONLY to Polkadot Hub TestNet while experimenting.
// This contract has a fixed supply and no owner minting, taxes, or transfer restrictions.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FrontierToken is ERC20 {
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000 * 10 ** 18;

    constructor() ERC20("Polka Frontier", "PFR") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
