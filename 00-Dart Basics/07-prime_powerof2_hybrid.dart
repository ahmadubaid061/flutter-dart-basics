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

// void printhybridList(int n) {
//   dynamic count = 0;
//   int value = 2;
//   while (count < n) {
//     if(isPrime(value) || )
//   }
// }
void main() {
  print("2 is prime: ${isPrime(2)}");
  print("1 is prime: ${isPrime(1)}");
  print("3 is prime: ${isPrime(3)}");
  print("6 is prime: ${isPrime(6)}");
  print("11 is prime: ${isPrime(11)}");
}
