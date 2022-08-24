pragma solidity ^0.5.0;

contract DivisibleBy2{
    function Divide(uint number) public {
        require(number%2==0,"The number is not divisible by 2 and 4");
        require(number%4==0,"The number is divisible by 2");
        require(number%2==1,"The number is divisible by 2 and 4");
    }
}