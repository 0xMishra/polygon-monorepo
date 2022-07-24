// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {SiliconValley} from "src/SiliconValley.sol";

contract SiliconValleyScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new SiliconValley();
        vm.stopBroadcast();
    }
}
