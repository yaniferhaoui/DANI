var DANICoin = artifacts.require("DANICoin");

module.exports = function(deployer) {
  deployer.deploy(DANICoin);
};