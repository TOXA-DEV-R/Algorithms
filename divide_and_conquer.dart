void main(List<String> args) {
  print(some([
    2,
    1,
    5,
    10,
    6,
    5,
  ]));
}

int some(List<int> list) {
  if (list.isEmpty) {
    return 0;
  }

  return list[0] + some(list.sublist(1));
}
