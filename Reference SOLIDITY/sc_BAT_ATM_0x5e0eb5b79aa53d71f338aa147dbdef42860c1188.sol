/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity 0.4.10;

contract BAT_ATM{
    Token public bat = Token(0x0D8775F648430679A709E98d2b0Cb6250d2887EF);
    address owner = msg.sender;

    uint    public pausedUntil;
    uint    public BATsPerEth;// BAT/ETH

    modifier onlyActive(){ if(pausedUntil < now){ _; }else{ throw; } }
    
    function () payable onlyActive{//buy some BAT. Use gasLimit:100000
        if(!bat.transfer(msg.sender, (msg.value * BATsPerEth))){ throw; }
    }
//only owner
    modifier onlyOwner(){ if(msg.sender == owner) _; }
    
    function changeRate(uint _BATsPerEth) onlyOwner{
        pausedUntil = now + 300; //no new bids for 5 minutes (protects taker)
        BATsPerEth = _BATsPerEth;
    }

    function withdrawETH() onlyOwner{
        if(!msg.sender.send(this.balance)){ throw; }
    }
    function withdrawBAT() onlyOwner{
        if(!bat.transfer(msg.sender, bat.balanceOf(msg.sender))){ throw; }
    }
}

// BAToken contract found at:
// https://etherscan.io/address/0x0D8775F648430679A709E98d2b0Cb6250d2887EF#code
contract Token {
    function balanceOf(address _owner) constant returns (uint256 balance);
    function transfer(address _to, uint256 _value) returns (bool success);
}