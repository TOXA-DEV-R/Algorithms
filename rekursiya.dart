void main(List<String> args) {}

int recursion({required int num}) {
  if (num == 0) {
    return 0;
  }
  print(num);
  return recursion(num: num - 1);
}
