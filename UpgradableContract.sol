// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FirstContract {
    uint public data1;
    address public caller1;
    uint public amount1;

    function setData(uint _data) public payable {
        data1 = _data;
        caller1 = msg.sender;
        amount1 = msg.value;
    }
}

contract SecondContract {
    uint public data2;
    address public caller2;
    uint public amount2;

    function setData(address _contract, uint _data) public payable {
        FirstContract fc = FirstContract(_contract);
        fc.setData(_data);

        data2 = fc.data1();
        caller2 = fc.caller1();
        amount2 = fc.amount1();
    }
}
