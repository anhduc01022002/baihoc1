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

  print(s.isEmpty());

  s.push('A');
  s.push('B');
  s.push('C');


  print(s.isFull());

  print(s.pop());
  print(s.pop());
  print(s.pop());

}
