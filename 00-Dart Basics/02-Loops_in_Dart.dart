void main(){
//   loops are used for doing a repeatitive job
// like suppose i need to write numbers from 1 to 1000
// it will take several lines of code to write these numbers manually
// but with help of loops i can do that in 2 or 3 lines

// -------------------there are a lot of types of loops used

// --------------------- 1- for loop
// suppose i want to print numbers from 1 to 10
print("The Numbers are");
for(int i=0;i<10;i++){
  print("${i+1}");
}

// --------------------- 2- while loop
//   printing table of 2
  print("\ntable of 2! ");
int i=0;
while(i<10){
  print("2 x ${i+1} = ${2*(i+1)}");
  i=i+1;
}


// ------------------- 3- do-while
int x=0;
print("\ntable of 3 using do while loop!");
do{
  print("3 x ${x+1} = ${3*(x+1)}");
  x=x+1;
}while(x<10);

}

// --------------- there are other loops like
// for each ( used with lists which we will learn later