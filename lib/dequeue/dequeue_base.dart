/// Abstract base for a Double-Ended Queue (Deque).
abstract class DequeBase<T> {
  void appendRight(T value);

  void appendLeft(T value);

  T? popRight();

  T? popLeft();

  T? peekRight();

  T? peekLeft();

  bool get isEmpty;

  int get length;

  int get size;

  void clear();

  String prettyPrint();
}
