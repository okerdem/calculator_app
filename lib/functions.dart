//
String calculate(String text) {
  //
  List<String> list = text.split("");

  double result = double.parse(getNumber(list, 0));

  for (int i = 0; i < list.length; i++) {
    switch (list[i]) {
      case "+":
        result += double.parse(getNumber(list, i + 1));
        break;
      case "-":
        result -= double.parse(getNumber(list, i + 1));
        break;
      case "x":
        result *= double.parse(getNumber(list, i + 1));
        break;
      case "/":
        result /= double.parse(getNumber(list, i + 1));
        break;
      default:
        break;
    }
  }
  return result.toStringAsFixed(5);
}

//
String getNumber(List<String> list, int index) {
  //
  String result = "";

  while (index < list.length) {
    if (!list[index].contains("+") &&
        !list[index].contains("-") &&
        !list[index].contains("x") &&
        !list[index].contains("/")) {
      result += list[index];
      index++;
    } else {
      break;
    }
  }
  return result;
}
