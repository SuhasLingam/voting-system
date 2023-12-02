// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract votingSystem {
    struct voteDetails {
        uint id;
        string name;
        uint vote;
    }

    modifier test() {
        require(owner == msg.sender);
        _;
    }
    event voteCount(uint id, string name, uint count);

    address owner;

    constructor() {
        owner = payable(msg.sender);
    }

    voteDetails[] public leaderList;

    function getBal() external view returns (uint) {
        return address(this).balance;
    }

    function printList() external view returns (voteDetails[] memory) {
        return leaderList;
    }

    function addToList(
        uint __id,
        string memory __name,
        uint __vote
    ) external payable test {
        // require(owner == msg.sender, "You should be owner to Vote !");
        leaderList.push(voteDetails(__id, __name, __vote));
    }
}
