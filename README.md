# Module-21-Advanced-Solidity-Challenge

In this module, I’ll learn the difference between fungible and non-fungible tokens, as well as their standards as defined by the Ethereum community. I’ll use this knowledge to build smart contracts that use the same techniques blockchain companies use to offer new tokens and hold ICOs.

After waiting for years and passing several tests, I was selected by the Martian Aerospace Agency (a fictitious organization) to become part of the first human colony on Mars. As a prominent fintech professional, I was chosen to lead a project developing a monetary system for the newcolony. I have decided to base this new system on blockchain technology and to defi ne a new cryptocurrency, named KaseiCoin (Kasei means Mars in Japanese). KaseiCoin will be a fungible token that’s ERC-20 compliant. I’ll launch a crowdsale that will allow people who are moving to Mars to convert theirearthling money to KaseiCoin.

###  

* Create the KaseiCoin Token Contract
* Create the KaseiCoin Crowdsale Contract
* Create the KaseiCoin Deployer Contract
* Deploy the Crowdsale to a Local Blockchain
* Optional: Extend the Crowdsale Contract by Using OpenZeppelin

## Instructions on how to use 

### Copy the contents of KaseiCoin.sol and KaseiCoinCrowdsale.sol, upload to a Remix Online IDE workspace (https://remix.ethereum.org/)
* Upload KaseiCoinCrowdsale and KaseiCoin to a workspace
![1](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/5e30b0ba-27c2-4dd9-a246-32fe52726659)
* Run the "Solidity compiler" (version 0.5.0+commit.1d4f565a) on the left-hand side window pane and select "Compile KaseiCoin.sol" and "Compile KaseiCoinCrowdsale.sol"
![2](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/bdae5450-cac5-4794-84b0-08e16e545456)

* Connect MetaMask to Ganache through Private keys
![3](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/067f5039-0082-43ee-b8f8-f3b8ad110ffe)
![4](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/58401839-698f-4a9b-923c-d60f19175947)
* "Connect" the accounts
![5](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/65c6341a-f2ea-435b-acbc-3888e450ef7e)
* Go to the "Deploy & run transactions"  section and select the "Injector Provider - MetaMask" Environment, then press the orange "Deploy" button with contract "KaseiCoinCrowdsaleDeployer" selected after entering all the KaseiCoin attributes needed
![6](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/a8255e69-e626-4ed8-ac98-213ed83a50dd)
![7](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/96df8435-e76e-4d18-a3f0-639e100ddab3)
* Verify Contract Creation in Ganache
![8](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/3ea16aef-0038-4c0d-97f0-26a70fbb5364)
* Launch KaseiCoinCrowdSale using the kasei_crowdsale_address found in the KaseiCoinCrowdsaleDeployer contract (press the dropdown on this contract to find it) and press the "At Address" buttonn
![9](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/e4dcd199-3396-4b35-a930-fdf23b837e64)]
![10](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/1060f56b-fa92-43ea-94d9-a4f0386f70a0)
* Create a transaction using another connected account and buy 1 KaseiCoin
![11](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/fdf82ab7-3384-447e-bd29-872c1b2cec58)
![12](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/d15f2cd9-8eef-4dee-a3b4-254aff98ddae)
![13](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/9d1feb59-a735-4957-a9b5-8664408dbebc)
* Verify the transcation in Ganache
![14](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/0a2b9890-819e-4bd4-8b39-48986e8ad41c)
* Check the account to see if the weiRaised value changed as much as the transcation amount above
![15](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/cd004f5e-fa88-461c-b338-4390efda617c)
* In KaseiCoinCrowdsaleDeployer find the "kasei_token_address" and copy it to launch the "KaseiCoin" contract using the "At Address" button
![16](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/104530e8-3994-47ad-a122-5d67bd86fdad)
* Verify the amount of KaseiCoin's purchased through the crowdsale
![17](https://github.com/Chrisdeleon91/Module-21-Advanced-Solidity-Challenge/assets/22796940/82cbe9cb-ca58-447d-b45d-a6bf99dd628d)

![Picture](https://www.columbia.edu/content/themes/custom/columbia/assets/img/cu-header.svg)


