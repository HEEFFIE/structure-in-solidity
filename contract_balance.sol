// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract pay {
    //function to pay_balance to contract
    function payether() public payable {}

    //function to check balance

    function getbalance() public view returns (uint256) {
        return address(this).balance;
    }
}
