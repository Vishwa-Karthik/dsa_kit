import 'package:test/test.dart';
import 'package:dsa_kit/dsa_kit.dart';

void main() {
  group('MinHeap', () {
    test('inserts elements and pops in ascending order', () {
      final heap = MinHeap<int>();
      heap.push(5);
      heap.push(2);
      heap.push(8);
      heap.push(1);

      expect(heap.pop(), equals(1));
      expect(heap.pop(), equals(2));
      expect(heap.pop(), equals(5));
      expect(heap.pop(), equals(8));
      expect(heap.isEmpty, isTrue);
    });

    test('peek returns smallest without removing', () {
      final heap = MinHeap<int>();
      heap.push(10);
      heap.push(3);
      heap.push(7);

      expect(heap.peek(), equals(3));
      expect(heap.length, equals(3));
    });

    test('Return Null on pop when empty', () {
      final heap = MinHeap<int>();
      expect(heap.pop(), null);
    });

    test('Return Null on peek when empty', () {
      final heap = MinHeap<int>();
      expect(heap.peek(), null);
    });
  });
}
