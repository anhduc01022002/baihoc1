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

//'User' được truyền như là text vào hàm textField.
//'Hello' được thêm vào trước text để tạo ra result.
//result ('Hello User') được truyền như là output vào hàm onChanged.
//'Hello User' được in ra.