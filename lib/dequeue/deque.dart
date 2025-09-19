import 'package:dsa_kit/dequeue/dequeue_base.dart';

/// List-backed implementation of [DequeBase] using growable List.
/// Provides append/pop from both left and right ends.
class Deque<T> implements DequeBase<T> {
  final List<T> _list = List<T>.empty(growable: true);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  int get length => _list.length;

  @override
  int get size => _list.length;

  @override
  void appendRight(T value) => _list.add(value);

  @override
  void appendLeft(T value) => _list.insert(0, value);

  @override
  T? popRight() => isEmpty ? null : _list.removeLast();

  @override
  T? popLeft() => isEmpty ? null : _list.removeAt(0);

  @override
  T? peekRight() => isEmpty ? null : _list.last;

  @override
  T? peekLeft() => isEmpty ? null : _list.first;

  @override
  void clear() => _list.clear();

  @override
  String prettyPrint() {
    final buffer = StringBuffer();
    buffer.writeln('--- Deque<$T> (size=$size) ---');
    buffer.writeln(_list.isEmpty ? '[]' : '[ ${_list.join(', ')} ]');
    buffer.writeln('--- End of Deque ---');
    return buffer.toString();
  }

  @override
  String toString() => 'Deque<$T>($_list)';
}
