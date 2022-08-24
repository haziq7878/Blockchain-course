pragma solidity ^0.5.0;


contract Quiz{

    enum Status{
        Employeed,
        Not_Employeed
    }

    struct BankHBL {
        uint256 CNIC;
        string name;
        string Designation;
        string Branch;
        Status status;
        uint Phone_no;
    }

    uint EmployeCount;
    mapping(uint=> BankHBL) public HBL_employ;

    function getEmployee(uint _index) view public returns(uint256,string memory,string memory,string memory,Status,uint){
        return (HBL_employ[_index].CNIC,HBL_employ[_index].name,HBL_employ[_index].Designation,HBL_employ[_index].Branch,HBL_employ[_index].status,HBL_employ[_index].Phone_no);
    }

    function setEmployee(uint256 _CNIC,string memory _name,string memory _des,string memory _branch,Status _status,uint _PhoneNo) public{
        HBL_employ[EmployeCount] = BankHBL(_CNIC,_name,_des,_branch,_status,_PhoneNo);
        EmployeCount++;
    }
    function getEmployeeCount() view public returns(uint){
        return EmployeCount;
    }

}


contract SendEther{
    uint token = 1 ether; 
    event ConfirmMessage(
        string message
    );

    function getBalance() public payable{

    }
    function sendFunds(address payable _a1,address payable _a2,address payable _a3,address payable _a4,address payable _a5) public payable{
        _a1.transfer(token);
        _a2.transfer(token);
        _a3.transfer(token);
        _a4.transfer(token);
        _a5.transfer(token);
        emit ConfirmMessage("The funds are transfered");
    }
}