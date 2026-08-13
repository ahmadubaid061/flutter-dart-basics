//here i am suppose to create a student class

class Student {
  String name;
  int rollNo;
  int age;
  double cgpa;
  String Department;

  //Constructor
  Student(this.name,this.rollNo,this.age,this.cgpa,this.Department);


  //show Student Details
  void showStudentDetails(){
    print("-----Student Details----");
    print("Name   : ${this.name}\nRollNo  : ${this.rollNo}\nAge   : ${this.age}\nCGPA   : ${this.cgpa}\nDepartment : ${this.Department}");
  }

  //return name only
  String Name(){
    return this.name;
  }

}