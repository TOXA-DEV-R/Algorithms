void main() {
  List<int> list = [7, 2, 1, 8, 6, 3, 5, 4, 9, 4, 7];
  int high = list.length - 1;
  int low = 0;

  List<int> result = quickSort(list, low, high);
  print(result);
}

List<int> quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);

    quickSort(list, low, pi - 1);
    quickSort(list, pi + 1, high);
  }
  return list;
}

int partition(List<int> list, int low, int high) {
  if (list.isEmpty) {
    return 0;
  }

  int pivot = list[high];

  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      if (i != j) swap(list, i, j);
    }
  }

  if (i + 1 != high) swap(list, i + 1, high);
  return i + 1;
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
