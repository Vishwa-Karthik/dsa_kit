import 'package:test/test.dart';
import 'package:dsa_kit/dsa_kit.dart';

void main() {
  group('MaxHeap', () {
    test('inserts elements and pops in descending order', () {
      final heap = MaxHeap<int>();
      heap.push(5);
      heap.push(2);
      heap.push(8);
      heap.push(1);

      expect(heap.pop(), equals(8));
      expect(heap.pop(), equals(5));
      expect(heap.pop(), equals(2));
      expect(heap.pop(), equals(1));
      expect(heap.isEmpty, isTrue);
    });

    test('peek returns largest without removing', () {
      final heap = MaxHeap<int>();
      heap.push(10);
      heap.push(3);
      heap.push(7);

      expect(heap.peek(), equals(10));
      expect(heap.length, equals(3));
    });

    test('throws error on pop when empty', () {
      final heap = MaxHeap<int>();
      expect(() => heap.pop(), throwsStateError);
    });

    test('throws error on peek when empty', () {
      final heap = MaxHeap<int>();
      expect(() => heap.peek(), throwsStateError);
    });
  });
}
