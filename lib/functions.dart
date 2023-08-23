double calculate(String text) {
  //
  List list = text.split("");

  double result = double.parse(list[0]);

  for (var i = 0; i < list.length; i++) {
    if (list[i] == "/") {}
    switch (list[i]) {
      case "+":
        result += double.parse(list[i + 1]);
        break;
      case "-":
        result -= double.parse(list[i + 1]);
        break;
      case "x":
        result *= double.parse(list[i + 1]);
        break;
      case "/":
        result /= double.parse(list[i + 1]);
      default:
    }
  }
  return double.parse(result.toStringAsFixed(5));
}
