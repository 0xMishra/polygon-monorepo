// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Ghost} from "src/Ghost.sol";

contract GhostScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new Ghost();
        vm.stopBroadcast();
    }
}
