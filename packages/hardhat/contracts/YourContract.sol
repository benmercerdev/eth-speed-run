pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}

// contract YourContract {

//   bool public booBool = true;
//   uint8 public u8 = 1;
//   int public maxInt = type(int).max;

//   //event SetPurpose(address sender, string purpose);

//   string public purpose = "get rekt or lace moonboots";

//   constructor() {
//     // what should we do on deploy?
//   }

//   function setPurpose(string memory newPurpose) public {
//       purpose = newPurpose;
//       console.log(msg.sender,"set purpose to",purpose);
//       //emit SetPurpose(msg.sender, purpose);
//   }

//   function setBooBool(bool newBool) public {
//     booBool = newBool;
//     console.log(msg.sender,"set booBool to",booBool);
//   }

//   function setU8 (uint8 newU8) public {
//     u8 = newU8;
//     console.log(msg.sender,"set u8 to", newU8);
//   }
// }
