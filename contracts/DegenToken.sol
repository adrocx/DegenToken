// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
string public IG = "In-game items are: 1. Official DEGEN Box 2. Official DEGEN Hoddie 3. Official DEGEN Cap";
    constructor() ERC20("Degen", "DGN") {}

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        require(to != address(0), "Invalid address");
        require(amount > 0, "Amount must be greater than zero");

        _transfer(_msgSender(), to, amount);
        return true;
    }

    function redeem(uint256 amount) public onlyOwner {
        assert(amount <= 3 && balanceOf(msg.sender) > 2000);
        require(amount > 0, "Amount must be greater than zero");

        _burn(msg.sender, amount * 2000);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
