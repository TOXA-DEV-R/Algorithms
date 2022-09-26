List<int> selectionSort({required List<int> list}) {
  int n = list.length;

  for (int i = 0; i < n; i++) {
    int min = i;

    for (int indx = (i + 1); indx < n; indx++) {
      if (list[i] > list[indx]) {
        min = indx;
      }
    }

    if (min != i) {
      final int temp = list[i];
      list[i] = list[min];
      list[min] = temp;
    }
  }
  return list;
}
