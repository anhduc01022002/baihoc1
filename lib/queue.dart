class Queue {
  final int capacity;
  final List<int> list = <int>[];

  Queue(this.capacity);

  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  Future<void> enqueue(int value) async {
    if (this.isFull()) {
      print('Queue is full');
      return;
    }
    await Future.delayed(Duration(seconds: 1)); // Delay to simulate async operation
    list.add(value);
    print('Enqueued $value');
  }

  Future<int?> dequeue() async {
    if (this.isEmpty()) {
      print('Queue is empty');
      return null;
    }
    await Future.delayed(Duration(seconds: 1)); // Delay to simulate async operation
    int value = list.removeAt(0);
    print('Dequeued $value');
    return value;
  }
}
void main() async {
  Queue queue = Queue(3);

  await queue.enqueue(1);
  await queue.enqueue(2);
  await queue.enqueue(3);

  await queue.dequeue();
  await queue.dequeue();
  await queue.dequeue();
}
