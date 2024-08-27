// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MyToken {
    string public tokenName;
    string public tokenSymbol;
    uint256 public tokenTotalSupply;
    mapping(address => uint256) public tokenBalances;

    constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _tokenTotalSupply) {
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        tokenTotalSupply = _tokenTotalSupply;
        tokenBalances[msg.sender] = _tokenTotalSupply; // Assign all tokens to contract deployer initially
    }

    function mint(address account, uint256 value) public {
        tokenTotalSupply += value;
        tokenBalances[account] += value;
    }

    function burn(address account, uint256 value) public{
        require(tokenBalances[account] >= value, "Insufficient balance");
        tokenTotalSupply -= value;
        tokenBalances[account] -= value;
    }
}
