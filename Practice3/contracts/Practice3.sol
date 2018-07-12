pragma solidity ^0.4.23;

contract Practice3 {

    struct Category {
        uint cid;
        bytes32 cname;
    }

    Category[] public categories;
    bytes32[] public categories_name;

    constructor(){
        addCategory('Game');
        addCategory('CryptoCurrency');
        addCategory('Pet');
        addCategory('Peace');
    }

    function addCategory(bytes32 cname) {
        Category memory a;
        a.cid=categories.length;
        a.cname=cname;
        categories.push(a);
        categories_name.push(cname);
    }

    function getCategoryLength() view returns(uint){
        return categories.length;
    }

    function getAllCategories() view returns(bytes32[]){
        return categories_name;
    }

    function getCategoryName(uint cid) view returns(bytes32){
        return categories_name[cid];
    }

    function getCategory(uint cid) view returns(bytes32){
        return categories[cid].cname;
    }


}

//  Practice3.deployed().then(function(instance){ return instance.getCategoryLength.call()}).then(function(value) {console.log(value.toNumber());});
// Practice3.deployed().then(function(instance){ return instance.getAllCategories.call()});
// Practice3.deployed().then(function(instance){ return instance.getCategoryName.call(0)}).then(function(value) {return web3.toAscii(value).replace(/\u0000/g, '');});