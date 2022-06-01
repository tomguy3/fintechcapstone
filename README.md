# Artist/Record Label Smart Contract

## Overview

We created a smart contract to establish trust and clarity with the agreements between record companies and artists. The contract will hold predetermined funds in a vested wallet, supplied by the record company, released upon conditions met by the artist and the label. The funds in question will be Ether, the native cryptocurrency on the Ethereum platform. The vested wallet is an investment vehicle for the artist and has the option to be the main or a side contract during negotiations. This smart contract will permit the artist to access investment vehicles from the beginning of their career. The volatility of cryptocurrencies could allow the artist to have the value of their funds appreciate or depreciate. It is a more risky financial contract than dealing with fiat currency, but with the surge in interest in cryptocurrencies, an alternative must arise to meet the demand. The security comes from the nature of immutability in the smart contract. Neither party can change nor renegotiate the terms post-execution. Also, the contract offers a layer of transparency by giving all parties an understanding of the risks and benefits. At all times, the terms and conditions will be available to parties, and the artist will be able to see the exact payout they are entitled too.

## Contract Structure

The contract terms are determined through negotiation between the artist and the label. As a third-party contract provider, we do not intend to advise, interfere, or sway any of these talks. Our role comes in by offering the investment vehicle into the contract for the artist. We want to protect each artist/label involved by providing a meditator to the agreement. 

For example, Drake, Kanye West, Jack Harlow, and Kendrick Lamar created a song, and their percentage owed was an equal split of 25% approved by the label. Because multiple artists were involved in the project, this smart contract would:
  (a) Have the record label's vested amount for the project to ensure funds are available after the artist's completion.
  (b) Will protect all parties involved, and each artist will receive the correct amount of the split.
  (c) Allow each artist to have access to funds via Ether.

However, due to our observation of historical problems within the market, we aim to provide an inherent support structure that requires fair treatment of both parties and circumvent these historical issues. For example, artists can be dropped from label deals due to underperformance of an album, falling short of deadlines due to factors out of their control, or blatant breach of contract by the record label. On the flip side, we do not wish to see the record label financially harmed by an artist simply not meeting their contract terms on purpose or by negligence.  
Therefore, our contracts WILL NOT allow obscure circumstances to put the artist out of our smart contract, or the company to be required to pay out funds to a non-cooperative artist. Our unique conditional logic within the contract does not allow ad hoc dropping of an artist. It also does not allow an artist to be paid unless they meet their deadlines and/or surpass a specified expiration date for not trying. 
Our goal is to protect both parties. 

## Installation Guide

Solidity to create the vesting wallet.
Compiled the vesting wallet with Solc to use in Python.
Used Web3 to deploy the vesting wallet's ABI and bytecode to make transactions with Ganache.
Build, sign, and sent the transaction from the vesting wallet to the beneficiary within Python.
Provided an interface to send transactions via Streamlit.

