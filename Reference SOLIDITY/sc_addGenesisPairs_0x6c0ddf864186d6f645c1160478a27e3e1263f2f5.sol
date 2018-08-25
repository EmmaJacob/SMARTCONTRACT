/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity ^0.4.10;

contract addGenesisPairs {
    
address[] newParents;
address[] newChildren;

function addGenesisPairs()    {
    // Set elixor contract address
    elixor elixorContract=elixor(0x898bF39cd67658bd63577fB00A2A3571dAecbC53);
    
    newParents=[
0x232Ed2f520cF7f14Ca49f29121222A3c1A1A1887,
0x919C3110d566aE46fB34388bc9063147C445d30E,
0xfE178a440496F8563c855446E7067df515e6a2DC,
0xeD9bc202530BFBC8D9260DBd984B45d6b5Bd9Cc4,
0x4409754E09DF0383131C085f10C7AB3119817ede,
0xcFa8938ABD81DE3f700afb17ECBfd78BCC988FFf,
0x61a8039a2A68e6Bc9a4Eef5d1705a0561915A4b3,
0x77fDb72cB69B746df9CFA2E946bCE035DBcb77c6,
0x38392556391318019260871091301f28E2fc3a54,
0xb0C9ebB489047DfEe1b72D3b92790A147434b9c9,
0xA4A7a36FE307A01622221EfF22b5751D7280D692,
0x803987F4d802655592582D203AE70354Bf9F64C3,
0xaE61Ff3a328626E7815c1faabFB7b03B7Dcc455A,
0x38A76b988826B8A048f5f57fA05395f296E96386,
0xFDEee53E57dB84BeC241087E4a469B303aed42d9,
0x46e47c0e946B5c350BF9B3fb82b64570bdA795d6,
0x2F5291C3Da3ba2333787244e3861337416B8F7A0,
0xcc923B9CdC7c6f9fe16F493Da8E543DEFC2d700f,
0x1364028b79f89E490b832e213376C40695BF9204,
0x19cC2E54aB6e781b991960F7e68BF1b256cE4cC9,
0x5E1C8e43f1A7eC2fD3B31d97920E6BD81995B2Bd,
0xF83760fE3F6eC7D03c54D793dcf49dfD3E51B899,
0x474d0404820eDB131894250eA37C01724649A372
    ];
    
    
    
    newChildren=[0xBD3B7Fd475EF8291D5232b11FdC85Be4207cFa77,
0x3F2B7467AEf78Ea9b46785C5cE7fc037fb974387,
0x4D322A732a985580711e95A9F59d5Bf928691508,
0xdAB1481EB50D8a9Da12BBfdFF3B7312B870E3240,
0x9e6881f568F47ac2079c7c88B4EC846Af9Da0d88,
0x94E6974Bf05f54eEf2Ca846b8A4a00660cb5E299,
0x4FD4805baEd252CFA1c89ac3d5C85e22e1D71B00,
0xa29c863626712297517622A9f6C283A71E28AAd1,
0x27ad78Db2866c7583477C13aaA6656CEa55f087d,
0x9533b9F4462D01B90c1C30c4dCD36Cc795fBbDb7,
0xEE02BC6435470E52bF151a412a2ebD2ACd96bD33,
0xc5FE261232800b243C6a01fA0ad02a51F5Dc8E19,
0x9EAC3cdD08412C0D27d95884baA474f921a32ddf,
0x8763AbD22eC196688B6E7377b215cDe9e7C4002B,
0x0BFD3F3C1Ba5190eC08C078c26C67c2Ea8FCa1d0,
0xF281309F3e8cEa559e6bdaA2454B652A0C54eC26,
0xdE2f11814A5Bb93c2d94Dd43Eb897929E4945A01,
0xFA3D9E6Dd94B5BD9CCD913a93165290C975d3484,
0x909a635A228093DC8D4469CdF924DAcF84780935,
0x011fA5412Af15Bad948Fe772647cAb46a477C7dc,
0x3b4524eC94c3f765113117D8761f3872f9980a19,
0xc4A3985E9E72Ee4a83753aA22477b87A0102047C,
0x06448b04E372Fa9f651eA0A1BeEbF2B4FCf3f0D8
    ];
    
    elixorContract.importGenesisPairs(newParents,newChildren);
 
}

}

contract elixor {
    function importGenesisPairs(address[] newParents,address[] newChildren) public;
}