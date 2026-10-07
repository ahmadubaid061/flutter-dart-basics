int nthFactorial(int n, int r) {
  if (r == 0) {
    return 1;
  } else {
    return n * nthFactorial(n - 1, r - 1);
  }
} 

void main(){
  print(nthFactorial(6, 3));
}