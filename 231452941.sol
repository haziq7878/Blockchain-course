pragma solidity ^0.5.0;


contract Calculations{
    uint public Area;
    uint public Perimeter;
    uint length;
    uint width;

    function setLength(uint _length) public{
        length = _length;
    }
    function setWidth(uint _width) public{
        width = _width;
    }

    function setPerimeter() public {
        Perimeter = 2*(length + width);
    }

    function setArea() public{
        Area = length * width;
    }

    function getArea() public view returns (uint){
        return Area;
    }

    function getPerimeter() public view returns (uint){
        return Perimeter;
    }


}