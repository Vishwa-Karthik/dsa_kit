import 'package:dsa_kit/dsa_kit.dart';

void main() {
  final List<int> nums = [1, 2, 6, 4, 5];
  print(kLargestElement(nums, k: 3));
  print(kSmallestElement(nums, k: 3));
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
