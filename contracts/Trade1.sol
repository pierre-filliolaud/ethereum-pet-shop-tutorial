pragma solidity ^0.5.0;

contract Trade1 {
    address[16] public trades1;

    // Adopting a pet
    function book(uint tradeId) public returns (uint) {
        require(tradeId >= 0 && tradeId <= 15);
        trades1[tradeId] = msg.sender;
        return tradeId;
    }

    // Retrieving the trades
    function getTrades() public view returns (address[16] memory) {
        return trades1;
    }
}