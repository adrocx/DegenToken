# Building on Avalanche - ETH + AVAX

This is a code which explains in brief, the functionalities of DEGEN tokens.

## Description

This program is for creating Degen tokens and exploring its various functionalities and implementation. It allows the user to mint, burn, transfer tokens and also redeem the in-game items. In this solidity contract, the in-game items are:
1. Official DEGEN Box
2. Official DEGEN Hoddie
3. Official DEGEN Cap

We deploy this ERC20 token on the Avalanche network for Degen Gaming.

## Running the code

You can either fork the repo or download the zip file under code.

After downloading the code , you can 
try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
npx hardhat run scripts/deploy.js --network fuji

```

The above command will deploy the smart contract.

```
npx hardhat verify <contract address> --network fuji
```
The above command will verify the smart contract on the testnet.

The contract verification will be shown on the the SnowTrace platform where the creation and verification of contract will be shown.
After the perform the mint, burn, transfer and redeem functions, the transactions of siad functions will be shown in the SnowTrace platform. 

## Providing the wallet address and API key

In the .env file we need to provide our wallet address and the API key from the Snowtrace testnet.

```
WALLET_PRIVATE_KEY=
SNOWTRACE_API_KEY=
```
The above should be present in the .env file. Provide your wallet private key and the Snowtrace API key for your transactions to be deployed and verified on the testnet.

## Getting the AVX from Avalnche faucet

To run the above solidity smart contract, we need AVX tokens. So we go to the Avalanche testnet faucet and request for AVX tokens on the Fuji(C-Chain) network.

We need to connect our wallet to get the AVX tokens. Once this is done, we can then proceed to deploy the solidity smart contract.


## Authors

ADITYA RAJU

adrocxsmma@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
