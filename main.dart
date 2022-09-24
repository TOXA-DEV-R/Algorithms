void main(List<String> args) {
  final list = LinkedList<String>();

  print(list.head?.value);
}

/*Linked List*/

class Node<T> {
  Node({required this.value, this.next});

  T value;
  Node<T>? next;
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    // 1
    if (isEmpty) {
      push(value);
      return;
    }

    // 2
    tail!.next = Node(value: value);

    // 3
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    // 1
    var currentNode = head;
    var currentIndex = 0;

    // 2
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    // 1
    if (tail == node) {
      append(value);
      return tail!;
    }

    // 2
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}

// List<int> mergeTwoArrays(
//     {required List<int> array1, required List<int> array2}) {
//   int i = 0;
//   int j = 0;

//   int n = array1.length;
//   int m = array1.length;

//   List<int> result =
//       List<int>.filled((array1.length + array2.length), 0, growable: false);
//   int resultCounter = 0;

//   while (i < n && j < m) {
//     if (array1[i] < array2[j]) {
//       result[resultCounter] = array1[i];
//       i++;
//     } else {
//       result[resultCounter] = array2[j];
//       j++;
//     }
//     resultCounter++;
//   }

//   while (i < n) {
//     result[resultCounter] = array1[i];
//     i++;
//     resultCounter++;
//   }

//   while (j < m) {
//     result[resultCounter] = array2[j];
//     j++;
//     resultCounter++;
//   }

//   return result;
// }

// bool isPolindrome(String word) {
//   int low = 0;
//   int high = word.length - 1;

//   while (low < high) {
//     if (word[low] != word[high]) {
//       return false;
//     }

//     low++;
//     high--;
//   }

//   return true;
// }

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

