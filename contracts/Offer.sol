pragma solidity ^0.4.25;

import "./Dealtoken.sol";
import "./Consumer.sol"

contract Offer {

    Dealer dealer;
    address to;     // address of consumer the offer is made to...
    uint256 roi;    // parts per wei return associated with the offer... could be translated into other "terms"
    bool redeemed;
    uint256 expiry; // block when this offer expires...
    dealtoken token; // ref to the contract where we can burn that shit

    constructor(Dealer _dealer, address _to, uint256 _roi) public {
        dealer = _dealer;
        to = _to;
        roi = _roi;
    }

    struct dealOffer {
      uint id;
      address consumer;
      address dealer;
      string name;
      uint256 price;
    }

  mapping (uint => makeOffer) public Offer;
  mapping (uint => getOffer) private


event LogMakeOffer(
  uint indexed _id,
  address indexed _dealer,
  string _name,
  uint256 _price
);
event LogGetOffer(
  uint indexed _id,
  address indexed _dealer,
  address indexed _consumer,
  string _name,
  uint256 _price
);

    function redeem() onlyOfferee onlyNotRedeemed public {
        redeemed = true;
        // get consumer's information
        consumer = msg.sender;

        // the consumer can pay the dealer
        consumer.transfer(msg.value);

        // trigger the event
        LogMakeOffer(_id, consumer, dealOffer.name, dealOffer.price);

    function burnOfferValue(uint256 _value) public returns (bool success) {
            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
            balanceOf[msg.sender] -= _value;            // Subtract from the sender
            totalSupply -= _value;                      // Updates totalSupply
            Burn(msg.sender, _value);
            return true;
        }

    }

    modifier onlyOfferee() {
        require(msg.sender == to);
        _;
    }

    modifier onlyNotRedeemed() {
        require(redeemed == false);
        _;
    }
}
