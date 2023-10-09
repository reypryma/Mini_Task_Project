String loopNumber(){
  String output = '';

  for(int i = 1; i < 10; i++){
    if (i <= 5) {
      output += i.toString().padLeft(i+1, '0');
    } else {
      output += i.toString().padRight(i+1, '0');
    }
    output += '\n';
  }
  return output;
}