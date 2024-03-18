import D "mo:base/Debug";
actor Exercise {
  type Gender = {
    #male;
    #female;
  };
  type StudentRecord = {
    var name : Text;
    var email : Text;
    var age : Nat;
    var gender : Gender;
  };
  type Result = {
    #ok : Text;
    #err : Text;
  };
  stable let studentRecord : [StudentRecord] = [
    {
      var name = "Amara";
      var email = "amaralara@gmail.com";
      var age = 20;
      var gender : Gender = #female;
    },
    {
      var name = "Mary";
      var email = "MariaKeri@gmailcom";
      var age = 19;
      var gender : Gender = #female;
    },
  ];
  public shared func updateStudentRecord(index : Nat, name : ?Text, email : ?Text, age : ?Nat, gender : ?Gender) : async Result {
    // find the element based on index
    if (index < studentRecord.size()) {
      var record : StudentRecord = studentRecord[index];
      switch (name) {
        case (null) {

        };
        case (?name) {
          record.name := name;
        };
      };
      switch (age) {
        case (null) {

        };
        case (?age) {
          record.age := age;
        };
      };
      switch (gender) {
        case (null) {

        };
        case (?gender) {
          record.gender := gender;
        };
      };
      switch (email) {
        case (null) {

        };
        case (?email) {
          record.email := email;
        };
      };
      return #ok "updated record";
    } else {
      D.print("index out of outbounds");
      return #err "failed to update record";
    };

  };
};
