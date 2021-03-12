pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DANICOIN is ERC20 {
    constructor() ERC20("DANICOIN", "DANI") public {
		_mint(msg.sender, 200000);
    }
}