/// Base abstract heap class defining the contract.
/// SOLID Principle: Interface Segregation + Dependency Inversion
abstract class Heap<T extends Comparable> {
  void push(T value);

  T pop();

  T peek();

  String printHeap();

  bool get isEmpty;

  int get length;
}
