// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import './ERC721Connector.sol';

contract CryptoDogi is ERC721Connector {

    // array that stores our NFTs
    string[] public cryptoDogis;

    mapping(string => bool) _cryptoDogiExists;
    
    constructor() ERC721Connector('CryptoDogi', 'DOGI') {
    
    }

    function mint(string memory _cryptoDogi) public {
        require(!_cryptoDogiExists[_cryptoDogi], 'Error: CryptoDogi already exists!');
        cryptoDogis.push(_cryptoDogi);
        uint _id = cryptoDogis.length - 1;
        
        _mint(msg.sender, _id);

        _cryptoDogiExists[_cryptoDogi] = true;
    }
}