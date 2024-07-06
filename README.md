# ISRO Smart Contract

## Overview
The ISRO smart contract is an ERC20 token contract named SpaceToken (ST), designed to allow minting and burning of tokens with restricted permissions. The contract utilizes OpenZeppelin's ERC20 implementation to ensure security and standard functionality.

## Description
The ISRO contract allows the designated chief to mint new tokens and any holder to burn their tokens. This ensures controlled token distribution while allowing flexibility for token holders. The contract is built on the Ethereum blockchain and adheres to the ERC20 token standard.

## Getting Started

### Installing
To deploy and interact with the ISRO contract, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-repository/ISRO.git
    ```
2. **Navigate to the project directory**:
    ```bash
    cd ISRO
    ```
3. **Install the required dependencies**:
    ```bash
    npm install
    ```

### Executing Program
To deploy and interact with the ISRO contract:

1. **Compile the contract**:
    ```bash
    npx hardhat compile
    ```
2. **Deploy the contract**:
    ```bash
    npx hardhat run scripts/deploy.js --network <network-name>
    ```
    Replace `<network-name>` with the desired Ethereum network (e.g., `localhost`, `rinkeby`, `mainnet`).

3. **Interact with the contract**:
    Use a tool like Remix IDE, Hardhat, or Truffle to interact with the deployed contract. Example interaction using Hardhat console:
    ```bash
    npx hardhat console --network <network-name>
    ```
    ```javascript
    const ISRO = await ethers.getContractFactory("ISRO");
    const isro = await ISRO.deploy(initialSupply);
    await isro.deployed();
    console.log("ISRO deployed to:", isro.address);
    ```

### Help
For common issues, consider the following troubleshooting steps:

- Ensure your development environment is set up correctly with Node.js, npm, and Hardhat.
- Verify your Ethereum node or network configuration (e.g., Infura, Alchemy, local node).
- Check for syntax errors or mismatches in Solidity and JavaScript code.

For more detailed help, refer to the documentation or raise an issue on the project's GitHub repository.

## Authors
- Baljeet

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
