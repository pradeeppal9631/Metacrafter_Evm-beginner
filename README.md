# Metacrafter_Evm-beginner
Final project metacrafter evm beginner course 

## Introduction
This Code final Project of ETH-EVM Beginner

## MyToken
This is a Solidity smart contract that implements a basic token called MyToken. The contract allows for the minting and burning of tokens.

## License
This code is licensed under the MIT License.

## Prerequisites
Pagma Solidity version of 0.8.18 or higher

### Variables
 +'tokenName': This variable stores the name of your token as a string (e.g., "MyToken") assinged a public.
 +'tokenSymbol': This variable stores the token's abbreviation or symbol (e.g., "MTK") assinged a also public.
 +'tokenTotalSupply': This variable stores the total supply of tokens that have been created. It is an unsigned  integer.
 + 'mapping(address => uint256) public tokenBalances':The public visibility allows this mapping to be queried externally.

### Mapping
+'tokenBalances': A mapping that links each address to its token balance.The mapping is public, allowing external parties to view token balances for specific addresses.

### Constructer
Initializes the token name, symbol, and total supply.it assigns the initial salary to the address that deployed the contract, setting up the initial state of the contract.

It takes three parameters _tokenName; _tokenSymbol _tokenTotalSupply;

constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _tokenTotalSupply) {
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        tokenTotalSupply = _tokenTotalSupply;
        tokenBalances[msg.sender] = _tokenTotalSupply; // Assign all tokens to contract deployer initially
    }

### Functions
+ 'function mint(address account, uint256 value)': A public function used to mint new tokens. It takes an address _to and a uint _value as parameters. The function increases the total salary by _value and adds the same amount to the token balance of the specified _to.

 function mint(address account, uint256 value) public {
        tokenTotalSupply += value;
        tokenBalances[account] += value;
    }

+'burn(address account, uint256 value)':A public function used to burn existing tokens.Reduces the total supply by the specified value.
It takes an address account, uint256 value as parameters.

 function burn(address account, uint256 value) public{
        require(tokenBalances[account] >= value, "Insufficient balance");
        tokenTotalSupply -= value;
        tokenBalances[account] -= value;
    }

    ## Usage
    To use this contract, you need to deploy it on a compatible Ethereum Virtual Machine (EVM) blockchain network, such as Ethereum. Once deployed, you can interact with the contract using the provided functions.
    
