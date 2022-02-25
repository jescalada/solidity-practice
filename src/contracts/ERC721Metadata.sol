// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract ERC721Metadata {
    string private _name;
    string private _symbol;

    constructor(string memory a_name, string memory a_symbol) {
        _name = a_name;
        _symbol = a_symbol;
    }

    function name() external view returns(string memory) {
        return _name;
    }
    
    function symbol() external view returns(string memory) {
        return _symbol;
    }
}