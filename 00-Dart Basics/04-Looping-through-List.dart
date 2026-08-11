void main() {
//   for list we can use traditional for, while and do while loop
//  also we can use special loops such as for

// suppose i have a list
  List<int> marks = [20, 30, 16, 23, 90, 100, 88, 41, 12];
// i want to divide each value by 2
//   i will create a new list called halfmarks and store the new values there
  List<double> halfMarks = [];
  marks.forEach((value) =>
      halfMarks.add(value / 2));

  print(halfMarks); // contains all the marks in half


//============================= map property
//map can do operations on the entire list and return a new iterable with the values altered
//suppose i want to add "!" at the end of each name in the names list
  List<String> names = ['ubaid', 'Ahmad', "Ali", "Gul"];
  List<String> alteredNames = names.map((name) => name + '!').toList();
//toList() converts an iterable into a list
  print(alteredNames);
}