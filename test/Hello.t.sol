//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;
import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloTest is Test {
    HelloWorld hello;

    function setUp() public {
        //create a new instance of the hello contract
        //first anytime a test is called
        hello = new HelloWorld();
    }

    function testThatStringValueIsTheSame() public {
        assertEq(hello.greet(), "Hello World!");
    }
}
