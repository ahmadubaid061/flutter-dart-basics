// void floyd_triangle(int rows) {
//   dynamic val = 1;
//   for (int i = 1; i < rows; i++) {
//     for (int j = 1; j <= i; j++) {
//       print('$val ');
//       val += 1;
//     }
//     print("");
//   }
// }

//for better visiblity
void floydTriangle(int rows) {
  var value = 1;

  for (var i = 1; i <= rows; i++) {
    final row = <String>[];

    for (var j = 1; j <= i; j++) {
      row.add(value.toString());
      value++;
    }

    print(row.join(' '));
  }
}
void main() {
  floydTriangle(5);
}
