//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Wallet} from "../src/Wallet.sol";
import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";

contract AuthTest is Test {
    Wallet public wallet;

    function setUp() public {
        wallet = new Wallet();
    }

    function testSetOwner() public {
        wallet.setOwner(address(1));
        assertEq(wallet.owner(), address(1));
    }

    function testFailNotOwner() public {
        vm.prank(address(1));
        wallet.setOwner(address(1));
    }
}
