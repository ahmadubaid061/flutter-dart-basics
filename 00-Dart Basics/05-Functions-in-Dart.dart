// functions are reusabale code snippets that can be used again and again
// and simplify our code length
//functions may be of void data type or a fixed data type
//void funciton are used where we want to perform some action but
//in return we do not need anything

//while a fixed data type function such int function is used to do
//some operations and then return an integer value

// -----suppose i want to add two numbers and return the sum
int sum(int x,int y){
  return x+y;
}


//-----suppose i just want multiply the value of a variable by 2
//i do not need to return that so i will use void
void multiply(int x){
  x=x*2;
  print("value is: $x, but only inside function scope");
}


//main function is wheere my actually programming logic is written
void main(){
  int a=10;
  int b=20;
  int c=sum(a,b);  //this is how we call a function
  //the int or any other data type function call is stored in a new variable
  print("value of c is: $c");

  //now i want to multiply c with 2 so i call the multiply funct..
  multiply(c); //no need to store in a new variable

  // after the function body is executed the value of c is reset to its
  //before value because function has its own scope and
  //when a variable is inside it that means its in the function
  //and anything happen to a variable inside function will not affect its
  //original value
  print("value of c is: $c");
}