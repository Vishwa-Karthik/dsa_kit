import 'package:test/test.dart';
import 'package:dsa_kit/dsa_kit.dart';

void main() {
  test('MinHeap and MaxHeap can coexist', () {
    final minHeap = MinHeap<int>()
      ..push(2)
      ..push(10);
    final maxHeap = MaxHeap<int>()
      ..push(2)
      ..push(10);

    expect(minHeap.pop(), equals(2));
    expect(maxHeap.pop(), equals(10));
  });
}
