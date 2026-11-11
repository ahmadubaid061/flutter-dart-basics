void commulative_product(int n) {
  int previous = 1;
  for (int i = 1; i <= n; i += 2) {
    previous = previous * i;
    print("${previous} ");
  }
}

void main() {
  commulative_product(15);
}
