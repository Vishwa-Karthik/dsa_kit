import 'package:test/test.dart';
import 'package:dsa_kit/dsa_kit.dart';

void main() {
  group('Deque Tests', () {
    late Deque<int> deque;

    setUp(() {
      deque = Deque<int>();
    });

    test('new deque should be empty', () {
      expect(deque.isEmpty, isTrue);
      expect(deque.length, 0);
      expect(deque.size, 0);
      expect(deque.peekLeft(), isNull);
      expect(deque.peekRight(), isNull);
    });

    test('appendRight should add elements to right end', () {
      deque.appendRight(1);
      deque.appendRight(2);

      expect(deque.peekRight(), 2);
      expect(deque.peekLeft(), 1);
      expect(deque.length, 2);
    });

    test('appendLeft should add elements to left end', () {
      deque.appendLeft(1);
      deque.appendLeft(2);

      expect(deque.peekLeft(), 2);
      expect(deque.peekRight(), 1);
      expect(deque.length, 2);
    });

    test('popRight should remove elements from right end', () {
      deque.appendRight(1);
      deque.appendRight(2);

      expect(deque.popRight(), 2);
      expect(deque.popRight(), 1);
      expect(deque.popRight(), isNull); // popping empty
    });

    test('popLeft should remove elements from left end', () {
      deque.appendRight(1);
      deque.appendRight(2);

      expect(deque.popLeft(), 1);
      expect(deque.popLeft(), 2);
      expect(deque.popLeft(), isNull); // popping empty
    });

    test('mixed append and pop operations maintain correct order', () {
      deque.appendRight(10);
      deque.appendLeft(5);
      deque.appendRight(20);

      expect(deque.popLeft(), 5);
      expect(deque.popRight(), 20);
      expect(deque.popLeft(), 10);
      expect(deque.popLeft(), isNull);
    });

    test('clear should remove all elements', () {
      deque.appendRight(1);
      deque.appendRight(2);
      deque.appendRight(3);

      deque.clear();

      expect(deque.isEmpty, isTrue);
      expect(deque.length, 0);
      expect(deque.peekLeft(), isNull);
      expect(deque.peekRight(), isNull);
    });

    test('prettyPrint should display elements horizontally', () {
      deque.appendRight(1);
      deque.appendRight(2);
      deque.appendLeft(0);

      final output = deque.prettyPrint();
      expect(output.contains('[ 0, 1, 2 ]'), isTrue);
    });
  });
}
