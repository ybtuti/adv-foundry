//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {ERC20Mock} from "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";

contract DeployMockERC20 is Script {
    function run() public {
        deployMockERC20();
    }

    function deployMockERC20() public returns (address) {
        vm.startBroadcast();
        ERC20Mock erc20 = new ERC20Mock();
        vm.stopBroadcast();
        return address(erc20);
    }
}
