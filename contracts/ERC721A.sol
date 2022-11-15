// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Tomi204 is ERC721A {
    uint256 token_count;
    address public owner;
    constructor() ERC721A("Tomi204", "TOMI204") {
        owner = msg.sender;
    }
     
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
      
    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        return
            "https://ipfs.io/ipfs/QmUoQKfU6UBdQUQ1u3dRjF6C5Z2Ekso6MfUjhn3d2LfgN3";
    }

    function mint(uint256 quantity) external payable onlyOwner{
        require(token_count + quantity <= 204, "Max supply reached");
        token_count += 1;
        _mint(msg.sender, quantity);
    }
}
