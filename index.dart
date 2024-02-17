int simpleIncrement(int num, int i, int step) {
  int index = returnIndex(num.toString(), step); //first index to increment
  String number = '$num'; //num to string

  for (int j = 0; j < i; j++) {
    String subNumber = number.substring(0, index + 1);
    int newSubNumber = int.parse(subNumber) + 1;
    String newNumber = '$newSubNumber${number.substring(index + 1)}';
    if (number.length != newNumber.length) index++;
    number = newNumber;
    index = returnIndex(int.parse(number), (index + step));
  }
  return int.parse(number);
}

int returnIndex(String num, int step) {
  if (num.length > step)
    return step;
  else
    return (step - ((step ~/ num.length) * num.length));
}
