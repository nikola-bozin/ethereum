//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ID_Generator {
    uint256 public number;

    function generateID() public returns (bytes32) {
        number++;
        return keccak256(abi.encodePacked(address(this), number));
    }

    function setNum(uint256 _num) public {
        number = _num;
    }
}

//NOTE:

//function generateID will revert once number becomes bigger than:
//115,792,089,237,316,195,423,570,985,008,687,907,853,269,984,665,640,564,039,457,584,007,913,129,639,936
//So there are only that much unique ID's that can be generated, since we are using <uint256>.
