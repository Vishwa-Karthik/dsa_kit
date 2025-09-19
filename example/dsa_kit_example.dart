import 'package:dsa_kit/dsa_kit.dart';

void main() {
  final List<int> nums = [1, 2, 6, 4, 5];
  print(kLargestElement(nums, k: 3));
  print(kSmallestElement(nums, k: 3));
  handleDeque();
}

void handleDeque() {
  final deque = Deque<int>();

  // Append values to the right (end)
  deque.appendRight(1);
  deque.appendRight(2);
  deque.appendRight(3);
  print('After appendRight: ${deque.prettyPrint()}');
  // Output: [1, 2, 3]

  // Append values to the left (front)
  deque.appendLeft(0);
  deque.appendLeft(-1);
  print('After appendLeft: ${deque.prettyPrint()}');
  // Output: [-1, 0, 1, 2, 3]

  // Peek values
  print('Peek left: ${deque.peekLeft()}'); // -1
  print('Peek right: ${deque.peekRight()}'); // 3

  // Pop values from both ends
  print('Pop left: ${deque.popLeft()}'); // -1
  print('Pop right: ${deque.popRight()}'); // 3
  print('After popping: ${deque.prettyPrint()}');
  // Output: [0, 1, 2]

  // Clear the deque
  deque.clear();
  print('After clear: ${deque.prettyPrint()}');
  // Output: []
}

int kLargestElement(List<int> nums, {int k = 3}) {
  final heap = MinHeap<int>();

  for (final num in nums) {
    if (heap.size < k) {
      heap.push(num);
      print(heap.printHeap());
    } else if (num > (heap.peek() ?? -1)) {
      heap.pop();
      heap.push(num);
      print(heap.printHeap());
    }
  }
  return heap.peek() ?? -1;
}

int kSmallestElement(List<int> nums, {int k = 3}) {
  final heap = MaxHeap<int>();

  for (int num in nums) {
    if (heap.length < k) {
      heap.push(num);
    } else if (num < heap.peek()!) {
      heap.pop();
      heap.push(num);
    }
  }

  return heap.peek() ?? -1;
}
