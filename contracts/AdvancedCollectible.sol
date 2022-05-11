// An NFT Contract
// Where the TokenURI can be one of 3 different dogs
// Randomly selected

// SPDX-License-Identifier: MIT

pragma solidity 0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract AdvancedCollectible is ERC721, VRFConsumerBase {
  uint256 public tokenCounter;
  bytes32 public keyhash;
  unit256 public fee;

  constructor(
    address _VRFCoordinator,
    address _linkToken,
    byte32 _keyHash,
    uint256 _fee
  ) public 
  VRFConsumerBase(_VRFCoordinator, _linkToken)
  ERC721("Dogie", "DOG")
  {
    tokenCounter = 0;
    keyhash = _keyhash;
    fee = _fee;
  }
  
  function createCollectible(string memory tokenURI) public returns(bytes32) {
    bytes32 requestId = requestRandomness(keyhash, fee);
  }

}