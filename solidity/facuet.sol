//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Faucet {
// Faucet contract
    receive() external payable {}

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);
        
        // Send the amount to the address that requested it
        payable(msg.sender).transfer(withdraw_amount);
    }
}
