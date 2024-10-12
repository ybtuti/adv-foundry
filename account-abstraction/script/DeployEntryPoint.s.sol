// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {EntryPoint} from "lib/account-abstraction/contracts/core/EntryPoint.sol";

contract DeployEntryPoint is Script {
    function run() public {
        deployEntryPoint();
    }

    function deployEntryPoint() public returns (address) {
        vm.startBroadcast();
        EntryPoint entryPoint = new EntryPoint();
        vm.stopBroadcast();
        return address(entryPoint);
    }
}
