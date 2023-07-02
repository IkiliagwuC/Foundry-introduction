//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloTest is Test {
    HelloWorld helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function testStringStoredInGreet() public {
        // vm.expectRevert();
        assertEq(helloWorld.greet(), "Hello World!");
    }
}
