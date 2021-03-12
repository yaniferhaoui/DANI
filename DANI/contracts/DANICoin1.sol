pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DANICoin1 is ERC20 {

    mapping(address => bool) private allowedUsers;

    mapping(uint => uint) private tiers;

    address owner;
    
    constructor() ERC20("DANICoin1", "DANI1") public {
		  _mint(msg.sender, 200000);
      owner = msg.sender;
      tiers[1] = 10;
      tiers[2] = 5;
      tiers[3] = 2;
    }

    function getToken() public onlyAllowedUsers payable  { // User redeem its tokens
      require(allowedUsers[msg.sender] == true);
      require(msg.value > 0);

      if (msg.value >= 100){
        ERC20(address(this)).transferFrom(address(this),msg.sender, msg.value*tiers[1]); //Tiers 1
      }
      if (msg.value >= 50 && msg.value < 100){
        ERC20(address(this)).transferFrom(address(this),msg.sender, msg.value*tiers[2]); //Tiers 2
      }
      else {
        ERC20(address(this)).transferFrom(address(this),msg.sender, msg.value*tiers[3]); //Tiers 3
      }
    }

    function addAllowedUsers(address _toAllow) public { // Add users in allow map
      require(msg.sender == owner);
      allowedUsers[_toAllow] = true;
    }

    modifier onlyAllowedUsers() { // Modifier
      require(allowedUsers[msg.sender] == true);
      _;
    }

    function AirDrop( address _to) public { // Airdrop to an address
      require(msg.sender == owner);
      ERC20(address(this)).transferFrom(address(this), _to, 10);
    }

    
}