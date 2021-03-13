![Logo of Ethereum](ethereum-logo.png)

[DANI2 TOKEN](https://ropsten.etherscan.io/address/0x0365eA4a29b32f52289B5fddB1C5AaEC04C1e08D) - Ropsten Etherscan
========

Your hard work is about to become easier with **DANI2 TOKEN**

It ain't much, but it's honest work.

Contract : https://ropsten.etherscan.io/address/0x0365eA4a29b32f52289B5fddB1C5AaEC04C1e08D

Teacher DANI TOKEN wallet : https://ropsten.etherscan.io/token/0x0365ea4a29b32f52289b5fddb1c5aaec04c1e08d?a=0x6e5329026eb58d6242a2633871a063464b098c7a

Setup et configuration
--------
* Installation de truffle : **sudo apt install truffle**
* Installation de openzeppelin : **npm install openzeppelin-solidity**
* Compilation et deploiement du SC : https://www.trufflesuite.com/tutorials/robust-smart-contracts-with-openzeppelin#compiling-and-deploying-the-smart-contract
* Création de l'environement : mkdir DANI2 && cd DANI2
* Initialisation : truffle init
* Création du smart contract DANI Token : touch contracts/DANI2.sol
* Modification du deploy contract et migration vers ganache : https://www.trufflesuite.com/tutorials/robust-smart-contracts-with-openzeppelin#compiling-and-deploying-the-smart-contract
* Modification du trufflue-config : https://www.trufflesuite.com/tutorials/using-infura-custom-provider

Avant la migration
--------
* npm install @openzeppelin/contracts
* npm install @truffle/hdwallet-provider
* truffle compile
* truffle migrate –network ropsten

Utilisation et vérification
--------
* Utiliser https://mycrypto.com/
* Ajouter allowedUser admin
* Ajouter allowedUser future recipient
* Allow spent with spender the future recipient, call with the admin addresse
* Approve admin to send funds

Sources :
--------
- [Truffle Suite](https://www.trufflesuite.com)
- [Mycrypto.com](https://mycrypto.com/) 
- [Ropsten etherscan](https://ropsten.etherscan.io) 

Credits - ESILV :
--------
- Jean Daniel Adrien
- Yani Ferhaoui
