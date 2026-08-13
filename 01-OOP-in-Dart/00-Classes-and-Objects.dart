//classes work as blueprints for creating objects
//a single class can have multiple objects
//suppose we have class name student
//there are a lot of students objects in that class like
//medical students,engineering students , IT students etc all
//belong to the same class student

class Student{
  String name;
  int Roll_No;
  String department;
  double cgpa;

  //constructure is used for initializing class variables
  Student(this.name,this.Roll_No,this.department,this.cgpa);

  //class methods are used to access, modify are just print the class variables
  void readName(){
    print("Name is: ${this.name}");
  }

  void checkStatus(){
    if(this.cgpa>=3.7){
      print("This Student is Topper!");
    }else if(this.cgpa>=3.3 && this.cgpa<3.7){
      print("This Student is a Hard Working Student");
    }else{
      print("THis Student needs to work hard!");
    }
  }


  void printStudentDetails(){
    print("Name is: ${this.name}\nRoll NO is: ${this.Roll_No}\nDepartment is: ${this.department}\nCgpa is : ${this.cgpa}");
  }

}

void main(){
  //suppose i want to add a student object to the clas Student
  Student s1=new Student("Ubaid", 11, "Computer Science", 3.55);

  //want to read the name of s1
  print("s1 name is ${s1.name}");
  //it is printed but in some cases
  // the variables inside the class are private so you cannot access them directly
   // for them to access we use methods

  s1.readName(); //this will print its name
  s1.checkStatus();// this will print weather s1 is topper, hardworking or need a push
  s1.printStudentDetails(); // this will print whole data about s1
}