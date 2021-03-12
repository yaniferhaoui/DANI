pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DANICoin is ERC20 {
    constructor() ERC20("DANICoin", "DANI") public {
		_mint(msg.sender, 200000);
    }
}