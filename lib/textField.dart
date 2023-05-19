void textField(
    String text,{
      Function(String)? onChanged,
    }) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result);
  }
}

void main() {
  textField(
    'User',
    onChanged: (String output) {
      print(output);
    },
  );
}
