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
constructor(address beneficiaryAddress, uint64 startTimestamp, uint64 durationSeconds)


receive()

beneficiary()

start()

duration()

released(to, amount)

released(token)

release()

release(token)

vestedAmount(timestamp)

vestedAmount(token, timestamp)

_vestingSchedule(totalAllocation, timestamp)


PayeeAdded(account, shares)



//function ContractInit {
   
   
    //beneficiary(ARTIST, ARTIST_WALLET_ADDRESS)
//};

contract VestingWallet is Context {
    event EtherReleased(uint256 amount);
    event ERC20Released(address indexed token, uint256 amount);

    uint256 private _released;
    mapping(address => uint256) private _erc20Released;
    address private immutable _beneficiary;
    uint64 private immutable _start;
    uint64 private immutable _duration;

    /**
     * @dev Set the beneficiary, start timestamp and vesting duration of the vesting wallet.
     */
    constructor(
        address beneficiaryAddress==ARTIST_WALLET_ADDRESS,
        uint64 startTimestamp==DATE,
        uint64 durationSeconds==NUMBER_OF_YEARS
    ) {
        require(beneficiaryAddress != address(0), "VestingWallet: beneficiary is zero address");
        _beneficiary = beneficiaryAddress;
        _start = startTimestamp;
        _duration = durationSeconds;
    }

    /**
     * @dev The contract should be able to receive Eth.
     */
    receive() external payable virtual {}

    /**
     * @dev Getter for the beneficiary address.
     */
    function beneficiary() public view virtual returns (address) {
        return _beneficiary;
    }

    /**
     * @dev Getter for the start timestamp.
     */
    function start() public view virtual returns (uint256) {
        return _start;
    }

    /**
     * @dev Getter for the vesting duration.
     */
    function duration() public view virtual returns (uint256) {
        return _duration;
    //need conditional logic 
    }

    /**
     * @dev Amount of eth already released
     */
    function released() public view virtual returns (uint256) {
        return _released==INITIAL_PAYMENT;
    }

    /**
     * @dev Amount of token already released
     */
    /* function released(address token) public view virtual returns (uint256) {
        return _erc20Released[token];
    }

    /**
     * @dev Release the native token (ether) that have already vested.
     *
     * Emits a {EtherReleased} event.
     */
    function release() public virtual {
        uint256 releasable = vestedAmount(uint64(block.timestamp)) - released();
        _released += releasable;
        emit EtherReleased(releasable);
        Address.sendValue(payable(beneficiary()), releasable);
    }

    /**
     * @dev Release the tokens that have already vested.
     *
     * Emits a {ERC20Released} event.
     */
    function release(address token) public virtual {
        uint256 releasable = vestedAmount(token, uint64(block.timestamp)) - released(token);
        _erc20Released[token] += releasable;
        emit ERC20Released(token, releasable);
        SafeERC20.safeTransfer(IERC20(token), beneficiary(), releasable);
    }

    /**
     * @dev Calculates the amount of ether that has already vested. Default implementation is a linear vesting curve.
     change from linear; make into block payments by conditions 
     */
    function vestedAmount(uint64 timestamp) public view virtual returns (uint256) {
        return _vestingSchedule(address(this).balance + released(), timestamp);
    }

    /**
     * @dev Calculates the amount of tokens that has already vested. Default implementation is a linear vesting curve.
     decide if we want to keep as tokens
     */
    function vestedAmount(address token, uint64 timestamp) public view virtual returns (uint256) {
        return _vestingSchedule(IERC20(token).balanceOf(address(this)) + released(token), timestamp);
    }

    /**
     * @dev Virtual implementation of the vesting formula. This returns the amount vested, as a function of time, for
     * an asset given its total historical allocation.
     */
    function _vestingSchedule(uint256 totalAllocation==, uint64 timestamp) internal view virtual returns (uint256) {
        if (timestamp < start()) {
            return 0;
        } else if (timestamp > start() + duration()) {
            return totalAllocation;
        } else {
            return (totalAllocation * (timestamp - start())) / duration();
        }
    }
}