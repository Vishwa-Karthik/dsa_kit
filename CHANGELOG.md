# Changelog

## [0.0.5] - 2025-09-28
### Added
- Added `INT` extension providing convenient constants:
  - `INT.infinity` - Maximum positive integer value
  - `INT.negativeInfinity` - Minimum negative integer value
- Updated documentation and examples for INT extensions


## [0.0.4] - 2025-09-19
### Added
- Introduced `DequeBase<T>` (abstract base class) to follow **SOLID principles** and define the contract for double-ended queues.
- Added `Deque<T>` implementation using `List.empty(growable: true)` internally.
  - `appendRight(T value)`
  - `appendLeft(T value)`
  - `popRight()`
  - `popLeft()`
  - `peekRight()`
  - `peekLeft()`
  - `isEmpty`, `length`, `size`
  - `clear()`
  - `prettyPrint()` for horizontal array-like output.

- Added **unit tests (`deque_test.dart`)** covering:
  - Empty deque behavior
  - Append and Pop operations from both ends
  - Mixed usage scenarios
  - Clearing the deque
  - Pretty print and `toString()` output validation

## [0.0.3] - 2025-09-18
### Added
- Improvised **MaxHeap** & **MinHeap** implementation.
- Updated Heap's tests.
- Unified **Heap interface** with SOLID principles

## [0.0.2] - 2025-09-17
### Added
- Implemented **MaxHeap** with:
  - `push`, `pop`, `peek`, `isEmpty`, `length`
  - `printHeap()` for pretty-printing heap levels
- Unified **Heap interface** with SOLID principles
- Improved `pubspec.yaml` to support Dart `>=3.2.0 <4.0.0`

## [0.0.1] - 2025-09-16
### Added
- Initial release of `dsa_kit`.
- Introduced **MinHeap**.
- Introduced **MaxHeap**.
- Added basic **unit tests** for both heaps.
- Example usage in `example/dsa_kit_example.dart`.

---
