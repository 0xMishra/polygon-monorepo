// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Ghost.sol";
contract GhostTest is Test {
    Ghost ghost;
    address bob = address(0x1);
    address mary = address(0x2);
    function setUp() public {
        ghost = new Ghost();
    }

    function testBalance() public {
        uint value = ghost.balanceOf();
        assertEq(value, 120000);
        emit log_named_uint("The value is", value);
    }

    function testTotalSupply() public {
        uint totalSupply = ghost.totalSupply();
        assertEq(totalSupply, 120000*10**18);
        emit log_named_uint("The total supply is",totalSupply);
    }
}
