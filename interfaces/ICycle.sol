// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

interface ICycle {
    function authorize(uint256 amount) external;
    function cycle(uint256 amountIn) external;
}
