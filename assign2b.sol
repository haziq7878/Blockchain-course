pragma solidity ^0.5.0;

//Contract address 0x048eAD92adcC764eAE277753e5e3aFDf7c83b67F

contract Task2{
    bool public pause;


    //Purpose: Get the count of vowels in a string
    //Input params = string 
    // returns = uint count

    function getVowelCount(string memory a) public returns(uint){
        require(!pause,"The contract is paused due to upper case letter");
        bytes memory byteA = bytes(a);
        uint count;
        for(uint i = 0;i<byteA.length;i++){
            if(byteA[i]>= 0x41 && byteA[i] <= 0x5A){
                pause = true;
                return 0;
            }
            if(byteA[i]==bytes1('a')|| byteA[i]==bytes1('e') || byteA[i]==bytes1('i') || byteA[i]==bytes1('o')|| byteA[i]==bytes1('u')){
                count++;
            }
            
        }
        return count;
    }

    //Purpose = get total electricity bill
    //input params = uint (units of electricity used)
    //returns = uint cost 

    function getBill(uint _uints) public view returns (uint){
        uint cost;
        if(_uints<=100){
            return cost;
        }
        for(uint i=101;i<=_uints;i++){
            if(i<=200){
                cost+=5;
            }
            else{
                cost+=10;
            }
        }
        return cost;
    }
}
