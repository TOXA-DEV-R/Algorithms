void main(List<String> args) {
  // print(1100 & 1001);
}

// bool bitwise_ConvertToBinary(int num) {
//   int bitCount = 0;

//   while (num != 0) {
//     bitCount += num & 1;
//     num = num >> 1;
//   }

//   return bitCount == 1;
// }

// String convertToBinary(int num) {
//   StringBuffer result = new StringBuffer('');

//   while (num != 0) {
//     int digit = num % 2;
//     result.write('$digit');
//     num = (num / 2).floor();
//   }

//   return result.toString().split('').reversed.toList().join();
// }

// int reverseDigits({required int num}) {
//   int result = 0;

//   while (num != 0) {
//     result *= 10;
//     int digit = num % 10;
//     result += digit;
//     num = (num / 10).floor();
//   }

//   return result;
// }

// void printDigits(int num) {
//   if (num == 0) {
//     print(0);
//     return;
//   }

//   while (num != 0) {
//     print(num % 10);
//     num = (num / 10).floor();
//   }
// }

