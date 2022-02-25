// we put the contract abis into a new variable
const CryptoDogi = artifacts.require("CryptoDogi");

module.exports = function(deployer) {
    deployer.deploy(CryptoDogi);
};