void floyd_triangle(int rows) {
  dynamic val = 1;
  for (int i = 1; i < rows; i++) {
    for (int j = 1; j <= i; j++) {
      print('$val ');
      val += 1;
    }
    print("");
  }
}
void main() {
  floyd_triangle(5);
}
