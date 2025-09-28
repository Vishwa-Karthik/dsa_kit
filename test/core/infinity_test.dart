import 'package:test/test.dart';
import 'package:dsa_kit/dsa_kit.dart';
void main() {
  group('Infinity Extension Tests', () {
    test('infinity returns correct positive infinity value', () {
      const expected = (1 << 63) - 1;
      expect(0.infinity, equals(expected));
      expect(42.infinity, equals(9223372036854775807));
      expect((-100).infinity,
          equals(expected)); // Should return same value regardless of instance
    });
    test('negativeInfinity returns correct negative infinity value', () {
      const expected = (-1 << 63);
      expect(0.negativeInfinity, equals(expected));
      expect(42.negativeInfinity, equals(-9223372036854775808));
      expect((-100).negativeInfinity,
          equals(expected)); // Should return same value regardless of instance
    });
    test('infinity values are at the bounds of 64-bit signed integers', () {
      // Test that these are indeed the maximum and minimum values
      expect(0.infinity, equals(0x7FFFFFFFFFFFFFFF));
      expect(0.negativeInfinity, equals(-0x8000000000000000));
    });
    test('infinity values maintain proper ordering', () {
      expect(0.negativeInfinity, lessThan(0));
      expect(0.infinity, greaterThan(0));
      expect(0.negativeInfinity, lessThan(0.infinity));
    });
    test('infinity values are distinct', () {
      expect(0.infinity, isNot(equals(0.negativeInfinity)));
      expect(
        0.infinity - 0.negativeInfinity,
        equals(-1),
      ); // Overflow behavior
    });
    test('extension works with any int instance', () {
      // Test that the extension works with different int values
      expect(123.infinity, equals(456.infinity));
      expect((-789).negativeInfinity, equals(101112.negativeInfinity));
      // All instances should return the same infinity values
      final testValues = [0, 1, -1, 42, -42, 1000000, -1000000];
      for (final value in testValues) {
        expect(value.infinity, equals((1 << 63) - 1));
        expect(value.negativeInfinity, equals((-1 << 63)));
      }
    });
  });
  group('Practical Usage Tests', () {
    test('can be used for heap initialization', () {
      int currentMax = 0.negativeInfinity;
      int currentMin = 0.infinity;
      // Simulate finding max and min
      final values = [42, -10, 100, 0, -50];
      for (final value in values) {
        if (value > currentMax) currentMax = value;
        if (value < currentMin) currentMin = value;
      }
      expect(currentMax, equals(100));
      expect(currentMin, equals(-50));
    });
    test('can be used as sentinel values', () {
      int findMaxInRange(List<int> arr, int start, int end) {
        if (start > end) return 0.negativeInfinity;
        int maxVal = 0.negativeInfinity;
        for (int i = start; i <= end; i++) {
          if (arr[i] > maxVal) maxVal = arr[i];
        }
        return maxVal;
      }
      final testArray = [1, 5, 3, 9, 2];
      expect(findMaxInRange(testArray, 0, 4), equals(9));
      expect(findMaxInRange(testArray, 3, 2), equals(0.negativeInfinity));
    });
    test('comparison operations work correctly', () {
      expect(100 < 0.infinity, isTrue);
      expect(-1000 > 0.negativeInfinity, isTrue);
      expect(0.infinity > 0.negativeInfinity, isTrue);
      // Test with regular numbers
      expect(0.infinity > 1000000000, isTrue);
      expect(0.negativeInfinity < -1000000000, isTrue);
    });
  });
  group('Edge Cases and Validation', () {
    test('values are at actual integer limits', () {
      // These should be the actual limits of Dart integers on 64-bit systems
      expect(0.infinity, equals(9223372036854775807));
      expect(0.negativeInfinity, equals(-9223372036854775808));
    });
    test('arithmetic operations behave as expected', () {
      // Test overflow behavior (should wrap around)
      expect(0.infinity + 1, equals(-9223372036854775808));
      expect(0.negativeInfinity - 1, equals(9223372036854775807));
    });
    test('can be used in collections', () {
      final list = [0.negativeInfinity, 0, 0.infinity];
      list.sort();
      expect(list[0], equals(0.negativeInfinity));
      expect(list[1], equals(0));
      expect(list[2], equals(0.infinity));
    });
    test('bit manipulation verification', () {
      // Verify the underlying bit manipulation formulas
      expect(0.infinity, equals((1 << 63) - 1));
      expect(0.negativeInfinity, equals((-1 << 63)));
      // Verify hexadecimal representation
      expect(0.infinity.toRadixString(16), equals('7fffffffffffffff'));
      expect(0.negativeInfinity.toRadixString(16), equals('-8000000000000000'));
    });
    test('consistency across different instances', () {
      // Create multiple instances and verify consistency
      final instances = [0, 1, -1, 42, 100, -100];
      final infinityValues = instances.map((i) => i.infinity).toSet();
      final negInfinityValues =
          instances.map((i) => i.negativeInfinity).toSet();
      // All instances should return the same value
      expect(infinityValues.length, equals(1));
      expect(negInfinityValues.length, equals(1));
    });
  });
}