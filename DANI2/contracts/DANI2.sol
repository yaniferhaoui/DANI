pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DANI2 is ERC20 {

mapping(address => bool) private allowedUsers;

mapping(uint => uint) private tiers;

address owner;
constructor() ERC20("DANI2", "DANI2") public {
owner = msg.sender;
_mint(owner, 200000 ether);
tiers[0] = 1;
tiers[1] = 5;
tiers[2] = 2;
}

function getToken() public onlyAllowedUsers payable { // User redeem its tokens
require(allowedUsers[msg.sender] == true);
if (msg.value >= 100 ether){
transferFrom(owner,msg.sender, msg.value*tiers[0]); //Tiers 1
}
if (msg.value >= 50 ether && msg.value < 100 ether){
transferFrom( owner,msg.sender, msg.value*tiers[1]); //Tiers 2
}
if (msg.value < 50 ether) {
transferFrom(owner, msg.sender, msg.value*tiers[2]); //Tiers 3
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
transfer(_to, 20);
}

function isAllowed(address user) public view returns (bool) {
return allowedUsers[user] == true;
}

}
