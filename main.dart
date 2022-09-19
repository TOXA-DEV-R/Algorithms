void main(List<String> args) {
  print(reverseDigits(num: 58954));
}

// void printDigits(int num) {
//   if (num == 0) {
//     print(0);
//     return;
//   }

//   while (num != 0) {
//     int digit = num % 10;
//     print(digit);
//     num = (num / 10).floor();
//   }
// }

int reverseDigits({required int num}) {
  int result = 0;

  while (num != 0) {
    result *= 10;
    int digit = num % 10;
    result += digit;
    num = (num / 10).floor();
  }

  return result;
}
