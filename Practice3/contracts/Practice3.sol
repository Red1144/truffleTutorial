pragma solidity ^0.4.23;

contract Practice3 {

    //카테고리 관련 구조체
    struct Category {
        uint cid;
        bytes32 cname;
    }

    //카테고리 관련 구조체 배열
    Category[] public categories;
    bytes32[] public categories_name;

    //템플릿 관련 구조체
    struct Template {
        string tname;
        uint cid; // (FK)
        string[] tasteLabel;
    }

    //템플릿 관련 구조체 배열
    mapping(bytes32 => Template) templates;
    bytes32[] templateList;

    //생성자-기초 데이터 정의
    constructor(){
        addCategory('Game');
        addCategory('CryptoCurrency');
        addCategory('Pet');
        addCategory('Peace');

        addTemplate('game1','RPG',0);
        addTemplate('game2','Action',0);
        addTemplate('game3','Adventure',0);
        addTemplate('game4','Shooting',0);
        addTemplate('game5','VR',0);
        addTemplate('game6','Sports',0);
        addTemplate('game7','Music',0);
        addTemplate('game8','Education',0);
        addTemplate('game9','SCI-FI',0);
    }

    //카테고리 추가
    function addCategory(bytes32 cname) {
        Category memory a;
        a.cid=categories.length;
        a.cname=cname;
        categories.push(a);
        categories_name.push(cname);
    }

    //카테고리 길이 출력
    // Practice3.deployed().then(function(instance){ return instance.getCategoryLength.call()}).then(function(value) {console.log(value.toNumber());});
    function getCategoryLength() view returns(uint){
        return categories.length;
    }

    // 카테고리 목록 출력-근데 바이트 단위임 --; 스트링으로 바꿀까..
    // Practice3.deployed().then(function(instance){ return instance.getAllCategories.call()});
    function getAllCategories() view returns(bytes32[]){
        return categories_name;
    }

    //카테고리 id 입력 시 카테고리명 출력
    // Practice3.deployed().then(function(instance){ return instance.getCategoryName.call(0)}).then(function(value) {return web3.toAscii(value).replace(/\u0000/g, '');});
    function getCategoryName(uint cid) view returns(bytes32){
        return categories_name[cid];
    }

//    function getCategory(uint cid) view returns(bytes32){
//        return categories[cid].cname;
//    }

    //템플릿 입력
    function addTemplate(bytes32 templateKey, string tname, uint cid)
        //onlyOwner
        returns(bool success)
    {
        templates[templateKey].tname=tname;
        templates[templateKey].cid=cid;
        //templates[templateKey].tasteLabel=tasteLabel;
        templateList.push(templateKey);
        return true;
    }

    //템플릿 정보 출력
    // Practice3.deployed().then(function(instance){ return instance.getTemplate.call('game1')}); // 'RPG' 템플릿
    // Practice3.deployed().then(function(instance){ return instance.getTemplate.call('game1')}).then(function(v){return v[0].toString();}); // 'RPG'
    function getTemplate(bytes32 templateKey)
    public view returns(string tname, uint cid){
        return ( templates[templateKey].tname, templates[templateKey].cid);
    }

    //템플릿 갯수 출력
    // Practice3.deployed().then(function(instance){ return instance.getTemplateCount.call()}).then(function(value) {console.log(value.toNumber());});
    function getTemplateCount() public view returns(uint templateCount){
        return templateList.length;
    }
}
