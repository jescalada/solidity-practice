// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import './ERC721.sol';

contract ERC721Enumerable is ERC721 {

    uint256[] private _allTokens;
    
    function totalSupply() external view returns (uint256) {
        return _allTokens.length;
    }

    function tokenByIndex(uint256 _index) external view returns (uint256) {

    }

    function tokenOfOwnerByIndex(address _owner, uint256 _index) external view returns (uint256) {

    }

    function _mint(address to, uint256 tokenId) override(ERC721) internal virtual {

    }
}