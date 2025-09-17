import 'package:dsa_kit/heap/heap_base.dart';

class MaxHeap<T extends Comparable> implements Heap<T> {
  List<T> _heap = [];

  /// Build heap from a list in O(n)
  void heapify(List<T> values) {
    _heap = List<T>.from(values);
    for (int i = _parentIndex(_heap.length - 1); i >= 0; i--) {
      _heapifyDown(i);
    }
  }

  @override
  bool get isEmpty => _heap.isEmpty;

  @override
  int get size => _heap.length;

  @override
  int get length => _heap.length;

  /// Peek the largest element without removing it
  @override
  T? peek() => isEmpty ? null : _heap.first;

  /// Insert a value into the heap
  @override
  void push(T value) {
    _heap.add(value);
    _heapifyUp(_heap.length - 1);
  }

  /// Remove and return the largest element
  @override
  T? pop() {
    if (isEmpty) return null;
    _swap(0, _heap.length - 1);
    final T maxValue = _heap.removeLast();
    if (!isEmpty) {
      _heapifyDown(0);
    }
    return maxValue;
  }

  int _parentIndex(int i) => (i - 1) ~/ 2;
  int _leftChildIndex(int i) => 2 * i + 1;
  int _rightChildIndex(int i) => 2 * i + 2;

  void _heapifyUp(int index) {
    while (index > 0) {
      int parent = _parentIndex(index);
      if (_heap[index].compareTo(_heap[parent]) > 0) {
        _swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  void _heapifyDown(int index) {
    final int end = _heap.length - 1;
    while (_leftChildIndex(index) <= end) {
      int left = _leftChildIndex(index);
      int right = _rightChildIndex(index);

      int swapIndex = left;
      if (right <= end && _heap[right].compareTo(_heap[left]) > 0) {
        swapIndex = right;
      }

      if (_heap[swapIndex].compareTo(_heap[index]) > 0) {
        _swap(index, swapIndex);
        index = swapIndex;
      } else {
        break;
      }
    }
  }

  void _swap(int i, int j) {
    final tmp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = tmp;
  }

  @override
  String printHeap() {
    final buffer = StringBuffer();
    buffer.writeln('--- MaxHeap<$T> (size=$size) ---');
    buffer.writeln('| val |');
    buffer.writeln('|-----|');
    for (final val in _heap) {
      buffer.writeln('| $val |');
    }
    buffer.writeln('--- End of Heap ---');
    return buffer.toString();
  }
}
