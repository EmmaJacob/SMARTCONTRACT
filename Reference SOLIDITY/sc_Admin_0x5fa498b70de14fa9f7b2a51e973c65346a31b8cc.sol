/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity 0.4.19;

contract Admin {

    address public owner;
    mapping(address => bool) public AdminList;
    
    function Test() public returns (uint256 _balance) {
            
        address sender = msg.sender;
        return sender.balance;
        
    }
    
      function TestX() public {
         
         owner = msg.sender;
        
    }
    
}