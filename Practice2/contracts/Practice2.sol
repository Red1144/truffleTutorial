pragma solidity ^0.4.23;

contract Practice2 {

    bytes32[] public group;

    function add (bytes32 g) public returns (uint) {
        group.push(g);
        return group.length;
    }

    function get(uint num) view returns (bytes32) {
        return group[num];
    }

    function getArray() view returns(bytes32[]){
        return group;
    }

    function getArrayLength() view returns(uint){
        return group.length;
    }
}

//  Practice2.deployed().then(function(instance){ return instance.add(3)});
//  Practice2.deployed().then(function(instance){ return instance.add(5)});
//  Practice2.deployed().then(function(instance){ return instance.add(7)});
//  Practice2.deployed().then(function(instance){ return instance.getArray.call()});
//  Practice2.deployed().then(function(instance){ return instance.getArray.call()}).then(function(arr){return arr[0]});
//  Practice2.deployed().then(function(instance){ return instance.getArray.call()}).then(function(arr){return arr[0]}).then(function(value) {return web3.toAscii(value).replace(/\u0000/g, '');})
//  Practice2.deployed().then(function(instance){ return instance.get.call(0)}).then(function(value) {return web3.toAscii(value).replace(/\u0000/g, '');})
//  Practice2.deployed().then(function(instance){ return instance.getArrayLength.call()}).then(function(value) {console.log(value.toNumber());});