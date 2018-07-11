pragma solidity ^0.4.23;

contract Practice1 {

    uint[] public group;

    function add (uint g) public returns (uint) {
        group.push(g);
        return group.length;
    }

    function get(uint num) view returns (uint) {
        return group[num];
    }

    function getArray() view returns(uint[]){
        return group;
    }

    function getArrayLength() view returns(uint){
        return group.length;
    }
}

//  Practice1.deployed().then(function(instance){ return instance.add(3)});
//  Practice1.deployed().then(function(instance){ return instance.add(5)});
//  Practice1.deployed().then(function(instance){ return instance.add(7)});
//  Practice1.deployed().then(function(instance){ return instance.getArray.call()});
//  Practice1.deployed().then(function(instance){ return instance.getArray.call()}).then(function(arr){return arr[0]});
//  Practice1.deployed().then(function(instance){ return instance.getArray.call()}).then(function(arr){return arr[0]}).then(function(value) {console.log(value.toNumber());})
//  Practice1.deployed().then(function(instance){ return instance.get.call(0)}).then(function(value) {console.log(value.toNumber())})
//  Practice1.deployed().then(function(instance){ return instance.getArrayLength.call()}).then(function(value) {console.log(value.toNumber());});