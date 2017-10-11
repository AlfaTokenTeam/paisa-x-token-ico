pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract PaisaXToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function PaisaXToken(address _owner)  UpgradeableToken(_owner) {
    name = "PaisaXToken";
    symbol = "PXT";
    totalSupply = 133700000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}