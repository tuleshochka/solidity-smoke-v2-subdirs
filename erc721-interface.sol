// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.26;

interface IERC721 {
        //rule-id: ok
        function balanceOf(address owner) external view returns (uint256 balance);
        //rule-id: erc721-interface
        function ownerOf(uint256 tokenId) external view returns (bool);
        //rule-id: ok
        function safeTransferFrom(address from, address to, uint256 tokenId) external;
        //rule-id: erc721-interface
        function safeTransferFrom(address from, address to, uint8 tokenId, bytes calldata data) external;
        //rule-id: ok
        function transferFrom(address from, address to, uint256 tokenId) external;
        //rule-id: ok
        function approve(address to, uint256 tokenId) external;
        //rule-id: ok
        function getApproved(uint256 tokenId) external view returns (address operator);
        //rule-id: ok
        function setApprovalForAll(address operator, bool _approved) external;
        //rule-id: ok
        function isApprovedForAll(address owner, address operator) external view returns (bool);
        
}