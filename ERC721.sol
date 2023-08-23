// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OwnableMintableERC721 is ERC721, Ownable {
    uint256 public price = 0.01 ether;

    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol)
    {}

    function mint( uint256 tokenId) public onlyOwner {
        _mint(msg.sender, tokenId);
    }

    function buy(uint256 _tokenid) public payable {
        require(msg.value == price, "not enough ether");
        _transfer( ownerOf(_tokenid), msg.sender, _tokenid);
        (bool success, ) = address(owner()).call{value: msg.value}("");
        require(success);
    }
}
