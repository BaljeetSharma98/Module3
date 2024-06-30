// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Contract ISRO inherits all the properties of ERC20 
contract ISRO is ERC20 {
    address public chief;

    // Token name is SpaceToken and symbol is ST
    constructor(uint256 initialSupply) ERC20("SpaceToken", "ST") {
        _mint(msg.sender, initialSupply);
        chief = msg.sender;
    }

    modifier onlyChief() {
        require(msg.sender == chief, "You are not the ISRO Chief");
        _;
    }

    // Only ISRO Chief can mint tokens at receiver address
    function mint(address receiver, uint256 amount) external onlyChief {
        _mint(receiver, amount);
    }

    // Burn tokens from a specified address
    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }

    function transfer(address receiver, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, receiver, amount);
        return true;
    }
}
