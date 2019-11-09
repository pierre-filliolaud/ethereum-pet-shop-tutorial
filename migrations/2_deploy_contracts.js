var Adoption = artifacts.require("Adoption");
var Trade1 = artifacts.require("Trade1");

module.exports = function(deployer) {
    deployer.deploy(Adoption);
    deployer.deploy(Trade1);
};