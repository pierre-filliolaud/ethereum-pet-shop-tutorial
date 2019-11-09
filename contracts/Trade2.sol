pragma solidity ^0.5.0;

import "../contracts/Trade2.sol";
//import "../truffle/DeployedAddresses.sol";
import "../contracts/Trade1.sol";

contract Trade2 {
    address[16] public trades2;
//    Trade1 trade1 = Trade1(DeployedAddresses.Trade1());

    // Adopting a pet
    function book(uint tradeId) public returns (uint) {
        require(tradeId >= 0 && tradeId <= 15);
        trades2[tradeId] = msg.sender;
        return tradeId;
    }

    // Retrieving the trades
    function getTrades() public view returns (address[16] memory) {
        return trades2;
    }

    // Retrieving the trades
//    function getOldTrades() public view returns (address[16] memory) {
//        address[16] trades = trade1.getTrades();
//        return trades;
//    }

}