class Stack {
  final int capacity;
  final List<String> list = <String>[];

  Stack(this.capacity);

  bool isEmpty(){
    return list.isEmpty;
  }

  bool isFull(){
    return list.length >= capacity;
  }

  void push(String value){
    if (!isFull()) {
      list.add(value);
    } else {
      throw Exception("Stack is full");
    }
  }

  String pop(){
    if (!isEmpty()) {
      String value = list.last;
      list.removeLast();
      return value;
    } else {
      throw Exception("Stack is empty");
    }
  }
}
void main() {
  Stack s = new Stack(3);

  print(s.isEmpty()); // Trả về true

  s.push('A');
  s.push('B');
  s.push('C');
  // s.push('D'); // Sẽ ném ra ngoại lệ "Stack is full"

  print(s.isFull()); // Trả về true

  print(s.pop()); // Trả về 'C'
  print(s.pop()); // Trả về 'B'
  print(s.pop()); // Trả về 'A'
  // print(s.pop()); // Sẽ ném ra ngoại lệ "Stack is empty"
}
