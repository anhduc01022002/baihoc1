import 'dart:io';

void timerPeriodic ({
  required int second,
  required Function(int) callback,
}) {
  //Todo
  int counter = 0;
  while (true) {
    callback(counter);
    counter += second;
    sleep(const Duration(seconds: 1));
  }
}
void main() {
  timerPeriodic(
    second: 1,
    callback: (int counter) {
      print('$counter seconds');
    },
  );
}