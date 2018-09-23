pragma solidity ^0.4.25;

import "./Dealtoken.sol";
import "./Consumer.sol";
import "./Offer.sol";
import "./SafeMath.sol";

    contract Dealer {

    Dealtoken token;

      mapping(address => offer) offers;


    constructor(Dealtoken _token) {
        token = _token;
    }

    function makeOffer(address _consumer, uint256 _roi) public {
        offers.push(new Offer(this, _consumer, _roi));
    }
}
