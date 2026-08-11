void main(){
//   lists are used to store a collections of objects , variables ,etc
// a list can store only objects of simmillar data types like
//  and integer list will store only integers
// ------------------------------Systax
// ListKeword <datatype> listname = [the data goes here]


// an integer list
List<int> marks=[20,30,40,50];

// string list
List<String> names=['ubaid','Ahmad',"Ali","Gul"];

// -----------------------------indexes
// the elements of a list are accessible using indexes
// index mean position starting from 0

print(marks[0]); // means marks at position 0 which is 20
//   also
print("${names[0]} got ${marks[0]} marks.");
// it will print ubaid got 20 marks.


// ============================List operations
// we can perform many operations on list like
// ------------------------ length (returns no of objects in a list
print(names.length); // 4
  print(marks.length);//4
print(names.first); //returns first element at index 0
print(names.last);  //returns last element
print(names.reversed);  //return whole list with reversed order
//   insert a vlue into list

names.insert(2, 'bakhti'); //means insert Bakhti into the 2nd position(index) of the list
  print(names); // now we will see the new inserted name
  print(names.length); //it is now 5
}