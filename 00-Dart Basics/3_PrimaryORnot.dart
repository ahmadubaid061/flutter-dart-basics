bool isPrimary(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int num = 16;
  print("the number ${num} is PRimary : ${isPrimary(num)}");
}
