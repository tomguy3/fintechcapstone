// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Imports 

import "@openzeppelin/contracts/finance/VestingWallet.sol";

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/utils/SafeERC20.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Context.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

//Contract Creation

contract RecordLabel is VestingWallet {
    // Constructor Creation
    
    constructor() public VestingWallet(0xF5FBe792dCE8e2d1a79A532aE272a82d164271cF, 1653355311, 157784630) {}
    receive() external payable virtual {}
    
    // VestingWallet()
    // 0xF5FBe792dCE8e2d1a79A532aE272a82d164271cF, 1653355311, 157784630
    
    // Hard Coded above ^ but can also open sidebar input with parameters in first constructor
    //constructor(address beneficiaryAddress, uint64 startTimestamp, uint64 durationSeconds)
    
    // -------------------------------------------------------------------------
    
    // Label Deal Variable Creation

    string ARTIST_FULL_NAME = "Kendrick Lamar Duckworth"; //streamlit input;
    string RECORD_COMPANY = "pgLang";//streamlit input;
    // uint INITIAL_PAYMENT = 2500; 
    // string CITY_AND_STATE_OF_LAW = "Los Angeles, CA"; 
    // string ESIGNATURE_OF_ARTIST = "K-Dot";
    // string ESIGNATURE_OF_RECORD_COMPANY = "pgLang Signature";
    address RECORD_COMPANY_WALLET_ADDRESS = 0xF5FBe792dCE8e2d1a79A532aE272a82d164271cF; 
    address ARTIST_WALLET_ADDRESS = 0xF5FBe792dCE8e2d1a79A532aE272a82d164271cF;
    // uint COST_OF_FULL_OWNERSHIP = 10000;
    // uint PERCENTAGE_OF_GROSS_REVENUE = 30;
    // uint PERCENTAGE_OF_ROYALTIES_TO_COMPANY = 50;
    // uint PERCENTAGE_OF_ROYALTIES_TO_ARTIST = 50;
    // bool EXCLUSIVE_OR_PARTIAL_LICENSE = true;
    // uint PERCENTAGE_OF_RIGHTS_WILLING_TO_ASSIGN_TO_THE_RECORD_LABEL = 50;
    // uint NUMBER_OF_BODY_OF_WORKS = 3;
    uint NUMBER_OF_YEARS = 5;
    string DATE = "June 1, 2022";
    

// Payment Disbursment Logic
   
// Any Arguments required such as address, or opens contract to recieve ETH?
// receive() 
// is this run at startup ONLY? Or does it go below with other functions?

// beneficiary(ARTIST_WALLET_ADDRESS);

// start(DATE);

// duration(NUMBER_OF_YEARS);

//uint256 released(address, token)

//released(token)

release()

//release(token)

//vestedAmount(timestamp)
//vestedAmount(token, timestamp)

//_vestingSchedule(totalAllocation, timestamp)

//function ContractInit {
   
   //beneficiary(ARTIST, ARTIST_WALLET_ADDRESS)
//};
}