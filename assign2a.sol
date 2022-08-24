pragma solidity ^0.5.0;

//Contract address 0x34C34387A6FbC6B6Dc19977C2365AD2D96fD4b91


contract InstructorInfo{
    address public owner;

    constructor() public{
        owner = msg.sender;
    }

    enum Status{
        Active,
        NonActive
    }

    struct Instructor{
        string First_name;
        string Last_name;
        uint Office_no;
        uint Phone_no;
        string Domain;
        Status status;
    }
    mapping(address=> Instructor) Instructors;
    uint256 InstructorCount;
    address[] InstAddress;

    // purpose = This function is used for adding new Instructor to ths Instructors mapping. This will also increase the count and add its address to another mapping by their key value Count
    // Input params = (string first_name,string Last_name,uint OfficeNo,uint PhoneNo,string Domain,Status _status(Active,NonActive) this is an integer)
    // Returns Nothing

    function addInstructor(address inst, string memory _fname,string memory _lname,uint _OfficeNo,uint _PhoneNo,string memory _Domain,Status _status) public {
        require(msg.sender==owner,"Only owner can add records");
        InstAddress.push(inst);
        InstructorCount++;
        Instructors[inst] = Instructor(_fname,_lname,_OfficeNo,_PhoneNo,_Domain,_status);
    }   


    //Purpose = This function is used to get all the information of a specific instructor by their address.
    //Input params = address of the instructor
    // Returns = This will return Instructor first name,last name, office no,Phone no, Domain, status

    function getInstructor(address inst) public view returns(string memory,string memory,uint,uint,string memory,Status){
        return (Instructors[inst].First_name,Instructors[inst].Last_name,Instructors[inst].Office_no,Instructors[inst].Phone_no,Instructors[inst].Domain,Instructors[inst].status);
    }


    //Purpose = This function is used to get the total number of instructor in the array
    //Input params = None
    //return = count of Instructors in the array

    function getInstructorCount() public view returns(uint){
        require(msg.sender==owner,"Only owner can get the count of instructor");
        return InstructorCount;
    }

    //Purpose = THis function is used to get all the address of the instructors stored in the array
    //Input params = This will take an address which is used to self destruct the contract
    //returns = This will return array of address of instructor that are present in the Instructors array

    function getInstrutorsAddress() public returns(address[] memory){
        if(msg.sender!=owner){
            selfdestruct(msg.sender);
        }
        else{
           return InstAddress;
        }
    }

}