pragma solidity ^0.5.0;

contract SolidityDrive {

  
    // string emailid;


    // string emailid = "abc@gmail.com";

 

    struct File {
        string hash;
        string fileName;
        string fileType;
        uint date;
        

    }

    struct Email{
        string email;
    }

    mapping(address => File[]) files;
    mapping(address => Email[]) emails;

    function add(string memory _hash, string memory _fileName, string memory _fileType, string memory _email, uint _date) public {
        files[msg.sender].push(File({hash: _hash, fileName: _fileName, fileType: _fileType, date: _date}));
        emails[msg.sender].push(Email({email: _email}));
        
    }

    // function set(string memory _id) public {
    //     emailid = _id;
    // }

    function getFile(uint _index) public view returns(string memory, string memory, uint) {
        File memory file = files[msg.sender][_index];
        Email memory id = emails[msg.sender][_index];
        // return(file.hash, file.fileName, file.fileType, file.date);
        return(file.hash, id.email, file.date);
        
    }


    //  function getemail() public view returns (string memory) {
    //     return (emails.email);
    // }

    //  function getFile(string memory _emailid) public view returns(string , uint) {
    //      File memory file = files[msg.sender][_emailid];
    //     return(file.hash, file.date);
    // }
   

    function getLength() public view returns(uint) {
        return files[msg.sender].length;
    }
    
    // function get() public view returns(string memory) {
    //     return (emailid);
    // }
}
