bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  if (n == 2) {
    return true;
  }
  for (int i = 2; i * i <= n; i ++) {
    if (n % i == 0) {
      return false;
      
    }
  }
  return true;
}

void printhybridList(int n) {
  final myList = <int>[];
  dynamic count = 0;
  int value = 2;
  while (count < n) {
    //if vlaue is prime or power of 2 then print it
    if (isPrime(value) || (value & (value - 1)) == 0) {
      myList.add(value);
      
      count++;
    }
    value++;
  }
  print(myList);
}
void main() {
 printhybridList(10);
}
