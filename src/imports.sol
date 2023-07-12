//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../lib/solmate/src/tokens/ERC20.sol";

contract token is ERC20("ZToken", "ZTK", 18) {}

import "@openzeppelin/contracts/access/Ownable.sol";

contract TestOz is Ownable {}
