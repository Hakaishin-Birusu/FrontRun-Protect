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
    // function _getStrLen(string memory str) internal pure returns (uint256) {
    //     return bytes(str).length;
    // }

    /**
     * Using assembly to get correct length of passed string
     * Taken from : Stack Overflow
     * https://ethereum.stackexchange.com/a/13886
     */
    function _getStrLen(string memory str) internal pure returns (uint256 length) {
        uint256 i = 0;
        bytes memory string_rep = bytes(str);

        while (i < string_rep.length) {
            if (string_rep[i] >> 7 == 0) i += 1;
            else if (string_rep[i] >> 5 == bytes1(uint8(0x6))) i += 2;
            else if (string_rep[i] >> 4 == bytes1(uint8(0xE))) i += 3;
            else if (string_rep[i] >> 3 == bytes1(uint8(0x1E)))
                i += 4;
                //For safety
            else i += 1;

            length++;
        }
    }
}
