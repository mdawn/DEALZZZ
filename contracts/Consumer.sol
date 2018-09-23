pragma solidity ^0.4.25;

import "./SafeMath.sol";
import "./Dealtoken.sol";
import "./Offer.sol";
import "./Dealer.sol";

contract Consumer {

  Dealtoken token;


  constructor(dealtoken _token) {
      token = _token;



    LogDealOffer(msg.sender, _name);
  }

  // accept a deal
  function getOffer(uint _id) payable public {

    // retrieve the deal
    Dealstorage = deal[_id];

    // check that the deal has not been accepted yet
    require(Deal == 0X0);

    // don't allow the dealer to buy her own deal
    require(msg.sender != Dealer);

    // we check that the value sent corresponds to the price of the deal
    require(msg.value == deal.price);

    // keep consumer's information
    consumer = msg.sender;

    // trigger the event
    LogDealOffer(_id, Dealer, consumer, article.name, article.price);
  }

  function getOffer(address _dealer, uint256 _roi) public {
      offers.push(new Offer(this, _dealer, _roi));
  }
}
