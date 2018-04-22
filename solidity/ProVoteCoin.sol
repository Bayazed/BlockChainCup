pragma solidity ^0.4.21;

import "./MintableToken.sol";


contract ProVoteCoin is MintableToken{
    string public constant name = "Profesional voice coin";
    string public constant symbol = "PVO";
    uint8 public constant decimals = 18;

    //0 yes; 1 no; 2 win; 3 failed
        mapping (bytes32 => mapping(address=>address[4])) ratesAddresses;

        function getSkillValue(bytes32 skill, address who) public returns uint{
            address[4] rates = this.ratesAddresses[skill][who];
            return (rates[0].balance - rates[1].balance) + (rates[2].balance - rates[3].balance);
        }

        function addUserSkill(bytes32 skill,
                                address who,
                                address approveWal
                                address rejectWal,
                                address goodKarmaWal,
                                address badKarmaWal){
            address[4] rates = new address[4];
            rates[0] = approveWal;
            rates[1] = rejectWal;
            rates[2] = goodKarmaWal;
            rates[3] = badKarmaWal;
            ratesAddresses[skill][who] = rates;
        }

        function getGoodKarmaWallet(bytes32 skill, address who) public returns address{
            return this.ratesAddresses[skill][who][2];
        }

        function getBadKarmaWallet(bytes32 skill, address who) public returns address{
            return this.ratesAddresses[skill][who][3];
        }
}