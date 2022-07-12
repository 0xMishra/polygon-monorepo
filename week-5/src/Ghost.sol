// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Ghost is ERC20 {
    constructor() ERC20("Ghost", "GHOST") {
        _mint(msg.sender, 120000 * 10 ** decimals());
    }
}
