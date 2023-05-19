import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });
  print('Before sorting: $numbers');

  sortList(numbers, (sortedNumbers) {
    print('After sorting: $sortedNumbers');
  });
}

void sortList(List<int> numbers, Function(List<int>) callback) {
  numbers.sort();
  callback(numbers);
}
