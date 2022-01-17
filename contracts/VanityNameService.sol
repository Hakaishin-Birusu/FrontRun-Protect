//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {VanityNameServiceUtils as vnsUtils} from "./libraries/VanityNameServiceUtils.sol";
import {IVanityNameService as IVNS} from "./interfaces/IVanityNameService.sol";

contract VanityNameService is IVNS, Ownable {
    //==========// State Variables //==========//
    uint256 public reservationFee;
    uint256 public perCharRegistrationFee;
    uint256 public reservationDuration;
    uint256 public registryDuration;

    //==========// Mappings //==========//
    mapping(bytes32 => NameReservation) public getNameReservation;
    mapping(bytes32 => NameRegistry) public getNameRegistry;

    //==========// Constructor //==========//
    constructor(uint256 _perCharPrice, uint256 _reservationFee) {
        perCharRegistrationFee = _perCharPrice;
        reservationFee = _reservationFee;
        reservationDuration = 1 days;
        registryDuration = 28 days;
    }

    //==========// External/Public Functions //==========//

    /**
     * @dev Rserves Name for registration.
     * Step Name : Commit
     *
     * Uses rservation hash generated via `buildReservationHash`,
     * reservationHash comprises of `vnsName` & `user address`.
     *
     * NOTE reservation fee is added to discourage malicous actors from reserving arbitrary names.
     * Reservation fee is adjusted in total nameRegistartion fee.
     * So, if malicious miner front-run reservation, than to only original hash generator can register the name,
     * thus leverages the reservation fee paid by `reserveName` front-runner.
     * If there is a previous expired reservation than the reservation fee is transfered to previous reserver,
     * before new reservation.
     */
    function reserveName(bytes32 _reservationHash) external payable override {
        NameReservation storage nReservation = getNameReservation[
            _reservationHash
        ];

        require(
            block.timestamp > nReservation.reservationExpiry,
            "ERR: ALREADY RESERVED"
        );
        require(msg.value >= reservationFee, "ERR : INSUFFICIENT FEE");

        if (nReservation.feePaid != 0) {
            _cancleReservation(_reservationHash);
        }

        nReservation.reservedBy = msg.sender;
        nReservation.feePaid = reservationFee;
        nReservation.reservationExpiry = block.timestamp + reservationDuration;

        if (msg.value > reservationFee) {
            safeTransfer(msg.sender, msg.value - reservationFee);
        }

        emit LogNameReservation(
            msg.sender,
            _reservationHash,
            reservationFee,
            nReservation.reservationExpiry
        );
    }

    /**
     * @dev Registers name to `reserver`.
     * Step Name : Reveal
     *
     * reservation hash is rebuild using `revealed name` & `msg.sender` on-chain,
     * thus malicious actor cannot front-run transaction and register names for themseleves.
     *
     * NOTE Reservation fee paid at the time of registeration is ajusted in the `total payable amount`
     * If same name was registred earlier, but now its expired,
     * registration amount is transfered to previous owner before new registration.
     */
    function registerName(string calldata _name)
        external
        payable
        override
    {
        bytes32 reservationHash = vnsUtils._getReservationHash(
            _name,
            msg.sender
        );
        require(
            block.timestamp <
                getNameReservation[reservationHash].reservationExpiry &&
                block.timestamp != 0,
            "ERR: NOT RESERVED OR EXPIRED"
        );

        bytes32 nameHash = vnsUtils._getNameHash(_name);
        require(checkNameAvailability(_name), "ERR : NAME ALREADY REGISTERED");

        uint256 totalFee = vnsUtils._getPrice(perCharRegistrationFee, _name);
        uint256 returnableAmount = 0;

        if (totalFee > reservationFee) {
            uint256 payableFee = totalFee - reservationFee;
            require(msg.value >= payableFee, "ERR : INSUFFICIENT FEE");
            if (msg.value > payableFee) {
                returnableAmount = msg.value - payableFee;
            }
        } else {
            returnableAmount = (reservationFee - totalFee) + msg.value;
        }

        NameRegistry storage vnsReg = getNameRegistry[nameHash];

        if (vnsReg.feePaid > 0) {
            _withdrawRegistryDeposit(nameHash);
        }

        vnsReg.registrationExpiry = block.timestamp + registryDuration;
        vnsReg.feePaid = totalFee;
        vnsReg.registeredTo = msg.sender;

        delete (getNameReservation[reservationHash]);

        if (returnableAmount > 0) {
            safeTransfer(msg.sender, returnableAmount);
        }

        emit LogNameRegistered(
            msg.sender,
            _name,
            vnsReg.feePaid,
            vnsReg.registrationExpiry
        );
    }

    /**
     * @dev Renews duration of existing registration.
     *
     * NOTE Renewal can only be performed before registration expiry.
     * Only owner of name can renew the registeration
     */
    function renewName(string calldata _name) external override {
        bytes32 nameHash = vnsUtils._getNameHash(_name);
        NameRegistry storage vnsReg = getNameRegistry[nameHash];
        require(
            block.timestamp < vnsReg.registrationExpiry,
            "Expired or not registerd"
        );
        require(vnsReg.registeredTo == msg.sender, "ERR : AUTH FAILED");
        vnsReg.registrationExpiry = block.timestamp + registryDuration;

        emit LogNameRenew(msg.sender, nameHash, vnsReg.registrationExpiry);
    }

    /**
     * @dev Returns registration fee to owner post registration expiry.
     *
     * NOTE Withdraw can only be performed before after registration expiry.
     * Only owner of name can withdraw the registry fee
     */
    function withdrawRegistryDeposit(string calldata _name)
        external
        payable
        override
    {
        bytes32 nameHash = vnsUtils._getNameHash(_name);
        NameRegistry storage vnsReg = getNameRegistry[nameHash];
        require(vnsReg.registeredTo == msg.sender, "ERR: AUTH FAILED");
        require(vnsReg.feePaid > 0, "ERR : NO FEE");

        _withdrawRegistryDeposit(nameHash);
    }

    /**
     * @dev Cancles reservation and/or returns reservation fee.
     *
     * NOTE Can only be called by reserver.
     */
    function cancleReservation(bytes32 _reservationHash)
        external
        payable
        override
    {
        require(
            getNameReservation[_reservationHash].reservedBy == msg.sender,
            "ERR: AUTH FAILED"
        );

        require(
            getNameReservation[_reservationHash].reservationExpiry != 0 &&
                getNameReservation[_reservationHash].feePaid != 0,
            "ERR: NOT RESERVED"
        );

        _cancleReservation(_reservationHash);
    }

    /**
     * @dev Sets fee for reservation or registry.
     */
    function updateFee(FeeTypes _feeType, uint256 _newFee)
        external
        override
        onlyOwner
    {
        if (_feeType == FeeTypes.ReservationFee) {
            reservationFee = _newFee;
        } else if (_feeType == FeeTypes.RegistrationFee) {
            perCharRegistrationFee = _newFee;
        } else {
            revert("ERR : INVALID FEE TYPE");
        }
    }

    /**
     * @dev Sets duration for reservation or registry.
     */
    function updateDuration(DurationTypes _durationTypes, uint256 _newDuration)
        external
        override
        onlyOwner
    {
        if (_durationTypes == DurationTypes.ReservationDuration) {
            reservationDuration = _newDuration;
        } else if (_durationTypes == DurationTypes.RegistrationDuration) {
            registryDuration = _newDuration;
        } else {
            revert("ERR : INVALID DURATION TYPE");
        }
    }

    //==========// Internal/private Functions //==========//
    function safeTransfer(address _reciever, uint256 _amount) internal {
        bool sent = payable(_reciever).send(_amount);
        require(sent, "ERR : AMOUNT SEND FAILED");
    }

    function _cancleReservation(bytes32 _reservationHash) internal {
        safeTransfer(
            getNameReservation[_reservationHash].reservedBy,
            getNameReservation[_reservationHash].feePaid
        );

        emit LogCancleReservation(
            msg.sender,
            _reservationHash,
            getNameReservation[_reservationHash].feePaid
        );

        delete (getNameReservation[_reservationHash]);
    }

    function _withdrawRegistryDeposit(bytes32 _nameHash) internal {
        require(
            block.timestamp > getNameRegistry[_nameHash].registrationExpiry,
            "NOT EXPIRED OR REGISTERED"
        );
        safeTransfer(
            getNameRegistry[_nameHash].registeredTo,
            getNameRegistry[_nameHash].feePaid
        );
        emit LogUserWithdraw(
            msg.sender,
            getNameRegistry[_nameHash].registeredTo,
            _nameHash,
            getNameRegistry[_nameHash].feePaid
        );
        delete (getNameRegistry[_nameHash]);
    }

    //==========// Getter Functions //==========//

    /**
     * @dev Geneates & returns bytes32 reservtion hash.
     * reservaton hash is generated by hashing '_name' hash & user address.
     */
    function buildReservationHash(string memory _name)
        public
        view
        override
        returns (bytes32)
    {
        return vnsUtils._getReservationHash(_name, msg.sender);
    }

    /**
     * @dev Returns bytes32 hash of `_name`.
     */
    function getNameHash(string memory _name)
        external
        pure
        override
        returns (bytes32)
    {
        return vnsUtils._getNameHash(_name);
    }

    /**
     * @dev Returns contract eth balance.
     * Denotes current total collection by reservation & registry.
     */
    function vnsBalance() public view override returns (uint256) {
        return address(this).balance;
    }

    /**
     * @dev Checks availability of `_name` and returns bool accordingly.
     */
    function checkNameAvailability(string memory _name)
        public
        view
        override
        returns (bool)
    {
        return (block.timestamp >
            getNameRegistry[vnsUtils._getNameHash(_name)].registrationExpiry);
    }
}

// TODO
// find legit way to getStringLength
