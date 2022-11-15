// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Tomi204 is ERC721A {
    uint256 token_count;

    constructor() ERC721A("Tomi204", "TOMI204") {}

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
            "https://ipfs.io/ipfs/QmXMjXEjWBAzfA3UGPEQPub8iZAqD8myK12jKpE4F9EGfe";
    }

    function mint(uint256 quantity) external payable {
        token_count += 1;
        _mint(msg.sender, quantity);
    }
}
