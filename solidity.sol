// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;



contract MyToken {

    // public variables here
    string public token_name ="SHIVASWAMI";
    string public token_abbrev="SHIV";
    uint public total_supply=9000;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address mintaddress, uint  mintvalue)public {
      total_supply += mintvalue;
      balance[mintaddress] += mintvalue;
   }
    // burn function
   function burn(address burnaddress, uint burnvalue)public {
      if(balance[burnaddress]>= burnvalue){
        total_supply -= burnvalue;
        balance[burnaddress] -= burnvalue;
      }
     }
  }