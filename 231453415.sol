pragma solidity ^0.5.0;


contract Geometry{
    uint public area;
    uint public perimeter;
    uint length;
    uint width;

    function setLength(uint _length) public{
        length = _length;
    }
    function setWidth(uint _width) public{
        width = _width;
    }

    function setPerimeter() public {
        perimeter = 2*(length + width);
    }

    function setArea() public{
        area = length * width;
    }
}
