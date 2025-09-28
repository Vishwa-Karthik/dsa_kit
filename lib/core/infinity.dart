library core_infinity;

extension InfinityExtension on int {
  /// Returns positive infinity as the maximum 64-bit signed integer value.
  ///
  /// Implementation: `(1 << 63) - 1`
  ///
  /// This represents the largest possible value that can be stored in a
  /// 64-bit signed integer: 9,223,372,036,854,775,807
  ///
  /// Example:
  /// ```dart
  /// int maxBound = int.infinity;
  /// print(maxBound); // 9223372036854775807
  /// ```
  int get infinity => (1 << 63) - 1;

  /// Returns negative infinity as the minimum 64-bit signed integer value.
  ///
  /// Implementation: `(-1 << 63)`
  ///
  /// This represents the smallest possible value that can be stored in a
  /// 64-bit signed integer: -9,223,372,036,854,775,808
  ///
  /// Example:
  /// ```dart
  /// int minBound = int.negativeInfinity;
  /// print(minBound); // -9223372036854775808
  /// ```
  int get negativeInfinity => (-1 << 63);
}
