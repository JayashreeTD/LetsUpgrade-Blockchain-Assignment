
pragma solidity >=0.4.17 <0.7.0;

contract reportCard {
    
    string name;
    uint rollno;
    string batch;
    uint marks1;
    uint marks2;
    uint marks3;
    uint marks4;
    uint result;
    string status;
    
    function reportCard(string name1, uint rollno1, string batch1, uint marksj1, uint marksj2, uint marksj3, uint marksj4 ) public {
        
        name = name1;
        rollno = rollno1;
        batch = batch1;
        mark1 = marksj1;
        mark2 = marksj2;
        mark3 = marksj3;
        mark4 = marksj4;
        
        result = mark1 + mark2 + mark3 + mark4;
        result = result * 100/400;
        
         if( result < 38)
            status = "fail";
            
        else if(result >= 38)
            status = "pass";
    }
    
    function getdetails() public view returns(string, uint, string, uint, uint, uint, uint, uint, string)
{
        return (name, rollno, batch, mark1, mark2, mark3, mark4, result, status);
    }
}
