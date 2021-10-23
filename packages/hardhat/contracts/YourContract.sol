pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  bool public booBool = true;
  uint8 public u8 = 1;
  int public maxInt = type(int).max;

  //event SetPurpose(address sender, string purpose);

  string public purpose = "get rekt or lace moonboots";

  constructor() {
    // what should we do on deploy?
  }

  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      //emit SetPurpose(msg.sender, purpose);
  }

  function setBooBool(bool newBool) public {
    booBool = newBool;
    console.log(msg.sender,"set booBool to",booBool);
  }

  function setU8 (uint8 newU8) public {
    u8 = newU8;
    console.log(msg.sender,"set u8 to", newU8);
  }
}
