import 'heap_base.dart';

/// A MaxHeap implementation using List as the underlying storage.
class MaxHeap<T extends Comparable> implements Heap<T> {
  final List<T> _data = [];

  @override
  void push(T value) {
    _data.add(value);
    _bubbleUp(_data.length - 1);
  }

  @override
  T pop() {
    if (_data.isEmpty) throw StateError('Heap is empty');
    final root = _data.first;
    final last = _data.removeLast();
    if (_data.isNotEmpty) {
      _data[0] = last;
      _bubbleDown(0);
    }
    return root;
  }

  @override
  T peek() {
    if (_data.isEmpty) throw StateError('Heap is empty');
    return _data.first;
  }

  @override
  bool get isEmpty => _data.isEmpty;

  @override
  int get length => _data.length;

  void _bubbleUp(int index) {
    while (index > 0) {
      final parent = (index - 1) >> 1;
      if (_data[index].compareTo(_data[parent]) > 0) {
        _swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  void _bubbleDown(int index) {
    final length = _data.length;
    while (true) {
      final left = (index << 1) + 1;
      final right = left + 1;
      int largest = index;

      if (left < length && _data[left].compareTo(_data[largest]) > 0) {
        largest = left;
      }
      if (right < length && _data[right].compareTo(_data[largest]) > 0) {
        largest = right;
      }
      if (largest == index) break;

      _swap(index, largest);
      index = largest;
    }
  }

  void _swap(int i, int j) {
    final tmp = _data[i];
    _data[i] = _data[j];
    _data[j] = tmp;
  }
}
