pragma solidity ^0.5.0;


contract Activity3{


    struct Person{
        string name;
        string gender;
        uint Birth_year;
        string major;
    }

    mapping(uint=> Person) public perosns;

    Person public person;

    function addValues(string memory _name,string memory _gender,uint _Birth_year,string memory _major) public{
        person.name = _name;
        person.gender = _gender;
        person.Birth_year = _Birth_year;
        person.major = _major;
    }

    function getName() public view returns(string memory){
        return person.name;
    }

    function getGender() public view returns(string memory){
        return person.gender;
    }

    function getBirth() public view returns(uint){
        return person.Birth_year;
    }

    function getMajor() public view returns(string memory){
        return person.major;
    }

    function addPersons(uint CNIC,string memory _name,string memory _gender,uint _Birth_year,string memory _major) public{
        perosns[CNIC] = Person(_name,_gender,_Birth_year,_major);
    }


}