// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {

    string emailid;
    string hashkey;
    // string uniqueidentifier;
    
  
       function set(string memory _id, string memory _hashkey ) public {
        emailid = _id;
        hashkey = _hashkey; 
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function get() public view returns (string memory, string memory, uint256  ){
        return (emailid, hashkey, (block.timestamp)); 
        
    }
}
