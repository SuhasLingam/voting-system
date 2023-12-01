// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract votingSystem {
    struct voteStruct {
        string name;
        uint id;
        bool didVote;
        address from;
    }

    address owner;

    constructor() {
        owner = payable(msg.sender);
    }

    mapping(uint => address) voterMap;

    function addVote(uint _id, address _from) public payable {
        voterMap[_id] = _from;
    }
}
