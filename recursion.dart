void main(List<String> args) {
  print(recursion(num: 20));
}

int recursion({required int num}) {
  if (num == 0) {
    return num;
  }
  print(num);
  return recursion(num: num - 1);
}
