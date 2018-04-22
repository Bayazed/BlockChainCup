pragma solidity ^0.4.21;

import "./MintableToken.sol";


contract ProVoteCoin is MintableToken{
    string public constant name = "Profesional voice coin";
    string public constant symbol = "PVO";
    uint8 public constant decimals = 18;
}