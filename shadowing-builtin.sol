// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bug {
    uint now; // Overshadows current time stamp.

    function assert(bool condition) public {
        require(now>0, "time not null");
    }

    function get_next_expiration() private view returns (uint) {
        return now + 259200; // References overshadowed timestamp.
    }
}