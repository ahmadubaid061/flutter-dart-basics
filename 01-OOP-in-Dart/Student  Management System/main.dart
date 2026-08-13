//first of all i will import that Student Class
import 'Student.dart';

void main(){
  //adding students to class

  //instead of just create one by one and then adding them to a list will be difficult so
  // i will create all the objects already inside a list named students
  List<Student> students = [

    Student('Zeeshan Khan', 101, 20, 3.75, 'Engineering'),
    Student('Ayesha Gul', 102, 21, 3.60, 'Engineering'),
    Student('Fahad Marwat', 103, 19, 3.20, 'Engineering'),
    Student('Sana Yousafzai', 104, 22, 3.85, 'Engineering'),
    Student('Bilal Afridi', 105, 20, 2.95, 'Engineering'),
    Student('Hira Khattak', 106, 21, 3.45, 'Engineering'),

    Student('Usman Wazir', 201, 20, 3.90, 'IT'),
    Student('Mehwish Durrani', 202, 22, 3.55, 'IT'),
    Student('Adnan Shinwari', 203, 19, 3.10, 'IT'),
    Student('Fatima Bangash', 204, 21, 3.70, 'IT'),
    Student('Hassan Orakzai', 205, 20, 3.30, 'IT'),

    Student('Sadia Mehsud', 301, 23, 3.95, 'Medical'),
    Student('Imran Yousaf', 302, 22, 3.65, 'Medical'),
    Student('Rabia Tanoli', 303, 21, 3.80, 'Medical'),
    Student('Noman Bettani', 304, 24, 3.15, 'Medical'),
  ];

  //printing medical students only
  for(Student s in students){
    if(s.Department=="Medical"){  //the same can be dobe for other departments
      s.showStudentDetails();
    }
  }

  //printing students name whose cgpa is more than 3.5
  print("======Toppers============");
  print("Name : Department : CGPA");
  for(Student s in students){
    if(s.cgpa>3.5){
      print("${s.name} : ${s.Department} : ${s.cgpa}");
    }
  }

  //elder student in IT department
  int max=0;
  Student? oldest;
  //that ? means that the oldest can also be none
  for(Student s in students){
    if(s.Department=="IT" && s.age >max){
      max=s.age;
      oldest=s;
    }
  }
  //checking it the student was found or not in IT department
  if (oldest != null) {
    print("---- Oldest Student in IT Department ----");
    print("Name : ${oldest.name}");
    print("Age  : ${oldest.age}");
  } else {X
    print("No IT students found.");
  }

  //further functionality can be added here
}