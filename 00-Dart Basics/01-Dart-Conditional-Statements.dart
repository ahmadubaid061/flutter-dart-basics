void main() {
//   contidional statements are used for multi option senario
// operators are used such as
// && used for and
// || for or
// == for equals to
// != not equals to
// > greater than
// < less  than
// >= greater than equals
// <= less than equals

  double cgpa = 3.55;
  if (cgpa >= 3.7) {
    print("you are topper");
  } else if (cgpa >= 3.3 && cgpa < 3.7) {
    print("You are a hard working student");
  } else if (cgpa >= 3.0 && cgpa < 3.3) {
    print("you are average student");
  } else {
    print("you need to work hard!");
  }
}