# dsa_kit

[![Pub Version](https://img.shields.io/pub/v/dsa_kit)](https://pub.dev/packages/dsa_kit)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=flat&logo=dart&logoColor=white)](https://dart.dev)

A scalable Data Structures & Algorithms toolkit for Dart, designed to make competitive programming, interview preparation, and algorithmic problem-solving more accessible in the Dart ecosystem.

## 🎯 Why dsa_kit?

Coming from Python or Java, you might miss the convenience of `heapq` or `Collections.PriorityQueue`. Dart's core libraries are excellent, but they don't include specialized data structures that are essential for algorithmic problem-solving. 

**dsa_kit** bridges this gap by providing:
- 🏗️ **Production-ready** implementations following SOLID principles
- 🧪 **Thoroughly tested** components with comprehensive test coverage
- 📚 **Learning-friendly** code with clear documentation and examples
- ⚡ **Performance-optimized** algorithms suitable for competitive programming
- 🎓 **Interview-ready** utilities that you can confidently use and explain

## 🚀 Quick Start

Add `dsa_kit` to your `pubspec.yaml`:

```yaml
dependencies:
  dsa_kit: ^0.0.1
```

Run:
```bash
dart pub get
```

## 📖 Usage

### Heaps

Perfect for priority queues, finding k-th largest/smallest elements, and heap sort implementations.

```dart
import 'package:dsa_kit/dsa_kit.dart';

void main() {
  // Min Heap - smallest element first
  var minHeap = MinHeap<int>();
  minHeap.push(10);
  minHeap.push(5);
  minHeap.push(15);
  
  print(minHeap.peek()); // Output: 5
  print(minHeap.pop());  // Output: 5
  
  // Max Heap - largest element first  
  var maxHeap = MaxHeap<String>();
  maxHeap.push("apple");
  maxHeap.push("zebra");
  maxHeap.push("banana");
  
  print(maxHeap.peek()); // Output: zebra
  print(maxHeap.pop());  // Output: zebra
  
  // Works with custom objects too!
  var taskHeap = MinHeap<Task>();
  taskHeap.push(Task("Low priority", 3));
  taskHeap.push(Task("High priority", 1));
  taskHeap.push(Task("Medium priority", 2));
  
  while (!taskHeap.isEmpty) {
    print(taskHeap.pop().name); // Outputs in priority order
  }
}
```

### Deque
Efficient for adding/removing elements from both ends. Perfect for sliding windows, BFS/DFS, and scheduling tasks.

```dart
import 'package:dsa_kit/dsa_kit.dart';

void main() {
  final deque = Deque<int>();

  // Append values to the right (end)
  deque.appendRight(1);
  deque.appendRight(2);
  deque.appendRight(3);
  print(deque.prettyPrint()); // Output: [1, 2, 3]

  // Append values to the left (front)
  deque.appendLeft(0);
  deque.appendLeft(-1);
  print(deque.prettyPrint()); // Output: [-1, 0, 1, 2, 3]

  // Peek values without removing
  print(deque.peekLeft());   // Output: -1
  print(deque.peekRight());  // Output: 3

  // Pop values from both ends
  print(deque.popLeft());   // Output: -1
  print(deque.popRight());  // Output: 3
  print(deque.prettyPrint()); // Output: [0, 1, 2]

  // Clear the deque
  deque.clear();
  print(deque.prettyPrint()); // Output: []
}
```


## 🧪 Testing

Run tests:
```bash
dart test
```


**📋 Planned Features:**
- **Trie** - For string searching and prefix operations
- **Union-Find (Disjoint Set)** - For dynamic connectivity problems
- **Graph Utilities** - BFS, DFS, shortest path algorithms
- **Segment Trees** - For range queries and updates
- **Dynamic Programming Helpers** - Memoization utilities and common DP patterns
- **Advanced Trees** - AVL, Red-Black trees
- **String Algorithms** - KMP, Rabin-Karp implementations



## 📝 Changelog

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Vishwa Karthik**  
*Software Engineer passionate about algorithms and clean code*

- 🌐 Domain: `in.vishwakarthik`
- 📦 Package: `dsa_kit`

---