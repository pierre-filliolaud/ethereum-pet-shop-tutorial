pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Trade1.sol";

contract TestTrade1 {

    // The address of the adoption contract to be tested
    Trade1 trade1 = Trade1(DeployedAddresses.Trade1());

    // The id of the pet that will be used for testing
    uint expectedPetId = 8;

    //The expected owner of adopted pet is this contract
    address expectedTrade1 = address(this);

    // Testing the adopt() function
    function testUserCanAdoptPet() public {
        uint returnedId = trade1.adopt(expectedPetId);

        Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
    }


}
