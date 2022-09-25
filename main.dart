// import 'Linked_list.dart';

void main(List<String> args) {
  selectionSort(array: [1, 6, 5, 8, 7, 6]);
}

void selectionSort({required List<int> array}) {
  int n = array.length;

  for (int i = 0; i < n - 1; i++) {
    var min = i;

    for (var indx = (i + 1); indx < n; indx++) {
      if (array[indx] < array[min]) {
        min = indx;
      }
    }

    if (min != i) {
      var temp = array[i];
      array[i] = array[min];
      array[min] = temp;
    }
  }
  print(array);
}
