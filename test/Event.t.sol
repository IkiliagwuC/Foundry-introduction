//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "forge-std/Test.sol";
import {Event} from "../src/Event.sol";

contract EventTest is Test {
    Event e;

    event Transfer(address indexed from, address indexed to, uint256 amount);

    function setUp() public {
        e = new Event();
    }

    function testEmitTransferEvent() public {
        //vm.expectEmit()
        vm.expectEmit(true, true, false, true);
        emit Transfer(address(this), address(123), 456);
        e.transfer(address(this), address(123), 456);
    }

    function testEmitManyTransferEvent() public {}
}
