// SPDX-License-Identifier: MIT
import {Script} from "forge-std/Script.sol";
pragma solidity >=0.6.2 <0.9.0;

abstract contract vibeScript is Script {
  uint internal pk = vm.envOr("PRIVATE_KEY", uint(0));

  modifier broadcast() {
    if (pk != 0) vm.startBroadcast(pk);
    else vm.startBroadcast();
    _;
    vm.stopBroadcast();
  }
}