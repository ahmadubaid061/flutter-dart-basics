String reverseString(String s) {
  String reversed = s.split('').reversed.join('');
  //split('') converts the string into a list of characters.
  return reversed;
}

void main() {
  String name = "Ubaid Ahmad GUll";
  String reversed = reverseString(name);
  print("${name} reversed is : ${reversed}");
}
