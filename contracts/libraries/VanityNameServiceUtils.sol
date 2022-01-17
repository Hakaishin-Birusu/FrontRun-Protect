//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4;

library VanityNameServiceUtils {
    /**
     * @dev Returns total fee for `_name` on the basis of `_name` length.
     */
    function _getPrice(uint256 fee, string memory _name)
        internal
        pure
        returns (uint256)
    {
        return (fee * _getStrLen(_name));
    }

    /**
     * @dev Returns reservation hash.
     */
    function _getReservationHash(string memory _name, address _owner)
        internal
        pure
        returns (bytes32)
    {
        return (keccak256(abi.encodePacked(_getNameHash(_name), _owner)));
    }

    /**
     * @dev Returns bytes32 hash of `_name`.
     */
    function _getNameHash(string memory _name) internal pure returns (bytes32) {
        return keccak256(bytes(_name));
    }

    /**
     * @dev Returns length of `str`.
     * NOTE : review the integrity of length using bytes converison.
     * bytes length does not always matches with UT8 length.
     */
    function _getStrLen(string memory str) internal pure returns (uint256) {
        return bytes(str).length;
    }
}
