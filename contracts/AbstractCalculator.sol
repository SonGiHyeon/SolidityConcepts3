// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ICalculator.sol";
import "./MathLibrary.sol";

abstract contract AbstractCalculator is ICalculator {
    using MathLibrary for uint256;

    function calculate(
        uint a,
        uint b,
        string memory operation
    ) public pure virtual returns (uint) {}

    function add(uint a, uint b) public pure override returns (uint) {
        return MathLibrary.add(a, b);
    }
    function subtract(uint a, uint b) public pure override returns (uint) {
        return MathLibrary.subtract(a, b);
    }
    function multiply(uint a, uint b) public pure override returns (uint) {
        return MathLibrary.multiply(a, b);
    }
    function divide(uint a, uint b) public pure override returns (uint) {
        return MathLibrary.divide(a, b);
    }
}
