void main(){
  var number = 0;
  buttonCount(
    number,
    onPressed:(int updatedNumber){
      number = updatedNumber;
      print(number);
    },);
}

void buttonCount(int number,{required Function(int) onPressed}){
  onPressed(number + 1);
}