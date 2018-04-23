pragma solidity ^0.4.0;

import "./ProVoteCoin.sol";

library Library {
  struct data {
     bool isValue;
     bool rewarded;
   }
}

contract SkillVoter {

    ProVoteCoin public token = new ProVoteCoin();
    using Library for Library.data;

    address owner;

    bytes32 skill;

    //votes and wallets
    address skillApproved;
    address skillRejected;

    mapping(address=>Library.data) approveWallets;
    mapping(address=>Library.data) rejectWallets;


    function SkillVoter(address skillApproved,
                        address skillRejected,
                        address goodKarma,
                        address badKarma,
                        string skill){
        this.owner = msg.sender;
        this.skill = keccak256(skill);
        this.skillApproved = skillApproved;
        this.skillRejected = skillRejected;
        token.addUserSkill(this.skill, this.owner, skillApproved, skillRejected, goodKarma, badKarma);
    }

    function acceptVote(address voter) public returns (bool) {
        if(canVote(voter)){
            token.mint(skillApproved,1);
            approveWallets[voter].isValue = true;
            approveWallets[voter].rewarded = false;
            return true;
        }
        return false;
    }

    function rejectVote(address voter) public returns (bool) {
        if(canVote(voter)){
            token.mint(skillRejected,1);
            rejectWallets[voter].isValue = true;
            rejectWallets[voter].rewarded = false;
            return true;
        }
        return false;
    }

    function canVote(address voter) public returns (bool) {
        return !rejectWallets[voter] && !approveWallets[voter] && token.getSkillValue(skill,voter) > 6
    }

}