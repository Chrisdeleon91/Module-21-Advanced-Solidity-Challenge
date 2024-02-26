pragma solidity ^0.5.5;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
// Optional: Extend the Crowdsale Contract by Using OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";


// Have the KaseiCoinCrowdsale contract inherit the following OpenZeppelin:

contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale { 
    // UPDATE THE CONTRACT SIGNATURE TO ADD INHERITANCE
    // Provide parameters for all of the features of your crowdsale, such as the `rate`, `wallet` for fundraising, and `token`.
    constructor(
        uint rate, // rate in token bits
        address payable wallet, // sale beneficiary
        KaseiCoin token, // the KaseiCoin itself that the KaseiCoinCrowdsale will work with
        // Optional
        uint goal, // the crowdsale goal
        uint open, // the crowdsale opening time
        uint close // the crowdsale closing time
        ) public 
            Crowdsale(rate, wallet, token) 
            CappedCrowdsale(goal)
            TimedCrowdsale(open, close)
            RefundableCrowdsale(goal)
        {
        // constructor can stay empty
        }
}

contract KaseiCoinCrowdsaleDeployer {
    // Create an `address public` variable called `kasei_token_address` which will store KaseiCoin's address once that contract has been deployed
    address public kasei_token_address;
    // Create an `address public` variable called `kasei_crowdsale_address` which will store KaseiCoinCrowdsale's address once that contract has been deployed
    address public kasei_crowdsale_address;
    
    // Add the constructor.
    constructor(
        string memory name,
        string memory symbol,
        address payable wallet, //address  receiver
        uint256 goal // will allow you to set the crowdsale goal
    ) public {
        // Create a new instance of the KaseiCoin contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        
        // Assign the token contract’s address to the `kasei_token_address` variable.
        kasei_token_address = address(token);
        
        // Create a new instance of the `KaseiCoinCrowdsale` contract
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1, wallet, token, goal, now, now + 24 hours);
        
        // Assign the `KaseiCoinCrowdsale` contract’s address to the `kasei_crowdsale_address` variable.
        kasei_crowdsale_address = address(kasei_crowdsale);
        
        // Set the `KaseiCoinCrowdsale` contract as a minter
        token.addMinter(kasei_crowdsale_address);
        
        // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter();
    }
}