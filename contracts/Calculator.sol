// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AbstractCalculator.sol";

contract Calculator is AbstractCalculator {
    function calculate(
        uint a,
        uint b,
        string memory operation
    ) public pure override returns (uint) {
        if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("add"))
        ) {
            return add(a, b);
        } else if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("subtract"))
        ) {
            return subtract(a, b);
        } else if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("multiply"))
        ) {
            return multiply(a, b);
        } else if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("divide"))
        ) {
            return divide(a, b);
        } else {
            revert("Invalid operation");
        }
    }
}
