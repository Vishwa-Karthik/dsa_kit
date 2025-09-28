# DSA KIT

[![Pub Version](https://img.shields.io/pub/v/dsa_kit)](https://pub.dev/packages/dsa_kit)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=flat&logo=dart&logoColor=white)](https://dart.dev)

A scalable Data Structures & Algorithms toolkit for Dart, designed to make competitive programming, interview preparation, and algorithmic problem-solving more accessible in the Dart ecosystem.

## 🎯 Why dsa_kit?

When working with Dart, you might notice that while its core libraries are powerful, they don’t provide many of the classic data structures (like heaps, deques, or specialized queues) that are common in languages such as Python (heapq, collections.deque) or Java (PriorityQueue, LinkedList).

This is where dsa_kit comes in. It’s designed to give you the building blocks you need for problem-solving, algorithm practice, and production systems:

+ 🏗️ Well-structured & SOLID – clean, maintainable, and extensible implementations.

+ 🧪 Battle-tested – backed by strong unit tests to ensure reliability.

+ 📚 Beginner-friendly – readable code and examples for learning and interviews.

+ ⚡ Optimized for performance – suitable for competitive programming and high-throughput apps.

+ 🚀 Practical & ready-to-use – fills the gap between Dart’s core libraries and real-world problem-solving needs.

## 🚀 Quick Start

Add `dsa_kit` to your `pubspec.yaml`:

```yaml
dependencies:
  dsa_kit: <latest-version>
```

Run:
```bash
dart pub get
```

## 📦 Available Data Structures

| Data Structure                 | Variants / Implementations         | Key Features                                                                                                                  | Example Use Cases                                                            |
| ------------------------------ | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| **Heap**                       | - `MinHeap<T>` <br> - `MaxHeap<T>` | - Priority-based ordering <br> - `push`, `pop`, `peek` <br> - Works with `Comparable` and custom objects                      | - Priority Queues <br> - Find k-th smallest/largest <br> - Heap Sort         |
| **Deque** (Double-Ended Queue) | - `Deque<T>`                       | - Insert/remove from both ends <br> - `appendLeft`, `appendRight` <br> - `popLeft`, `popRight` <br> - `peekLeft`, `peekRight` | - Sliding Window Problems <br> - Palindrome checks <br> - BFS/DFS variations |

## 🛠️ Utilities

| Utility                    | Description                                                      | Example Usage                                      |
| ------------------------- | ---------------------------------------------------------------- | ------------------------------------------------- |
| **Int Extensions**        | Convenient constants for integer bounds                           | `INT.infinity`, `INT.negativeInfinity`     |



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

- 🌐 Domain: [in.vishwakarthik](https://vishwakarthik.in)
---