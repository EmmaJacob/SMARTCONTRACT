/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity ^0.4.17;

contract Distributor
{
    address owner = msg.sender;
    address newOwner = msg.sender;
    
    function ChangeOwner(address _newOwner)
    public
    {
        require(msg.sender == owner);
        newOwner = _newOwner;
    }
    
    function ConfirmOwner()
    public
    {
        require(newOwner==msg.sender);
        owner=newOwner;
    }
    
    function Withdrawal()
    public
    payable
    {
        owner.transfer(this.balance);
    }
    
    function Send(address[] addr, uint[] val)
    public
    payable
    {
        require(val.length==addr.length);
        uint total;
        for (uint j=0; j<val.length; j++)
        {
            require(addr[j]!=0x0);
            total+=val[j];
        }
        if(msg.value>=total)
        {
            for (uint i=0; i<addr.length; i++)
            {
                addr[i].transfer(val[i]);
            }
        }
    }
}