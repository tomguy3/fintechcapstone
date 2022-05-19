pragma solidity ^0.5.0;

// Imports 

import "@openzeppelin/contracts/finance/VestingWallet.sol";

//Contract Creation

contract RecordLabel {
    string ARTIST = //streamlit input;
    string ARTIST_FULL_NAME = //streamlit input;
    string RECORD_COMPANY = //streamlit input;
    uint INITIAL_PAYMENT = 
    string CITY_AND_STATE_OF_LAW = 
    string ESIGNATURE_OF_ARTIST = 
    string ESIGNATURE_OF_RECORD_COMPANY = 
    address payable RECORD_COMPANY_WALLET_ADDRESS = 
    address payable ARTIST_WALLET_ADDRESS = 
    uint COST_OF_FULL_OWNERSHIP = 
    uint PERCENTAGE_OF_GROSS_REVENUE = 
    uint PERCENTAGE_OF_ROYALTIES_TO_COMPANY = 
    uint PERCENTAGE_OF_ROYALTIES_TO_ARTIST = 
    bool EXCLUSIVE_OR_PARTIAL_LICENSE = 
    uint PERCENTAGE_OF_RIGHTS_WILLING_TO_ASSIGN_TO_THE_RECORD_LABEL = 
    uint NUMBER_OF_BODY_OF_WORKS = 
    uint NUMBER_OF_YEARS = 
    uint DATE = 
}

// Set up logic for payment disbursements

constructor(beneficiaryAddress, startTimestamp, durationSeconds)

receive()

beneficiary()

start()

duration()

released()

released(token)

release()

release(token)

vestedAmount(timestamp)

vestedAmount(token, timestamp)

_vestingSchedule(totalAllocation, timestamp)