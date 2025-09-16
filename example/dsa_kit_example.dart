import 'package:dsa_kit/dsa_kit.dart';

void main() {
  // Example: MinHeap
  final minHeap = MinHeap<int>();
  minHeap.push(5);
  minHeap.push(2);
  minHeap.push(8);
  print('MinHeap peek: ${minHeap.peek()}'); // 2
  print('MinHeap pop: ${minHeap.pop()}'); // 2
  print('MinHeap pop: ${minHeap.pop()}'); // 5

  // Example: MaxHeap
  final maxHeap = MaxHeap<int>();
  maxHeap.push(5);
  maxHeap.push(2);
  maxHeap.push(8);
  print('MaxHeap peek: ${maxHeap.peek()}'); // 8
  print('MaxHeap pop: ${maxHeap.pop()}'); // 8
  print('MaxHeap pop: ${maxHeap.pop()}'); // 5
}
