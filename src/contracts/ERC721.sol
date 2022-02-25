// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract ERC721 {
    
    event Transfer(
        address indexed from,
        address indexed to,
        uint indexed tokenId
        );

    mapping(uint => address) private _tokenOwner;

    mapping(address => uint) private _tokensOwnedCount;

    function _mint(address to, uint tokenId) internal {
        require(to != address(0), 'ERC721: Minting to a zero address!'); // require a valid address (nonzero)
        require(!_exists(tokenId), 'ERC721: Token already minted!'); // require that the token has not been minted yet
        _tokenOwner[tokenId] = to;
        _tokensOwnedCount[to] += 1;

        emit Transfer(address(0), to, tokenId);
    }

    function _exists(uint tokenId) internal view returns(bool) {
        address owner = _tokenOwner[tokenId];
        return owner != address(0);
    }
}