//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4;

interface IVanityNameService {
    enum FeeTypes {
        ReservationFee,
        RegistrationFee
    }
    enum DurationTypes {
        ReservationDuration,
        RegistrationDuration
    }

    struct NameReservation {
        address reservedBy;
        uint256 feePaid;
        uint256 reservationExpiry;
    }

    struct NameRegistry {
        uint256 registrationExpiry;
        uint256 feePaid;
        address registeredTo;
    }

    event LogNameReservation(
        address indexed reservedBy,
        bytes32 indexed reservedNameHash,
        uint256 reservationFee,
        uint256 expiryDate
    );

    event LogNameRegistered(
        address indexed registeredTo,
        string indexed registeredName,
        uint256 amountPaid,
        uint256 expiryDate
    );

    event LogCancelReservation(
        address indexed cancledBy,
        bytes32 indexed cancledNameHash,
        uint256 reservationFeeReturned
    );

    event LogNameRenew(
        address indexed renewBy,
        bytes32 indexed nameHash,
        uint256 newExpiry
    );

    event LogUserWithdraw(
        address indexed withdrawBy,
        address indexed withdrawTo,
        bytes32 indexed nameHash,
        uint256 withdrawAmount
    );

    function reserveName(bytes32 _reservationHash) external payable;

    function registerName(string calldata _name)
        external
        payable;

    function renewName(string calldata _name) external;

    function withdrawRegistryDeposit(string calldata _name) external payable;

    function cancelReservation(bytes32 _reservationHash) external payable;

    function vnsBalance() external view returns (uint256);

    function buildReservationHash(string memory _name)
        external
        view
        returns (bytes32);

    function checkNameAvailability(string memory _name)
        external
        view
        returns (bool);

    function updateFee(FeeTypes _feeType, uint256 _newFee) external;

    function updateDuration(DurationTypes _durationTypes, uint256 _newDuration)
        external;

    function getNameHash(string memory _name) external pure returns (bytes32);

    function getPayableFee(string memory _name) external view returns (uint256);
}
