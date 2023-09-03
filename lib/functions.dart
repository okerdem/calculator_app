// fix removeAt uses
//
String calculate(String text) {
  // spliting and adding the string in the _textField to the list
  List<String> list = text.split("");
  // double variable for the result of calculations
  double result = 0;
  // boolean variable for adding a number to result for first time
  bool first = true;

  // search for brackets for priority
  if (list.contains("(") && list.contains(")")) {
    // forming a list for the numbers between the brackets
    List<String> subList = [];
    result = 0;

    // finding the index of brackets and adding the numbers between brackets to the subList
    for (var i = list.indexOf("(") + 1; i < list.indexOf(")"); i++) {
      subList.add(list[i]);
    }

    // search for "/" operator for priority
    if (subList.contains("/")) {
      if (first) {
        // add the first number to result variable
        result = double.parse(backNumber(subList, subList.indexOf("/") - 1));
        // remove the first number added to result variable from list with cascade notation
        subList..removeAt(subList.indexOf("/") - 1);
        first = false;
      }

      // divide the result variable with the number after "/" operator
      result /= double.parse(subList[subList.indexOf("/") + 1]);

      // remove and relocate calculated values with the result
      subList..removeAt(subList.indexOf("/") + 1);
      subList[subList.indexOf("/")] = result.toString();
    }

    // search for "x" operator for priority
    if (subList.contains("x")) {
      if (first) {
        // add the first number to result variable
        result = double.parse(backNumber(subList, subList.indexOf("x") - 1));
        // remove the first number added to result variable from list with cascade notation
        subList..removeAt(subList.indexOf("x") - 1);
        first = false;
      }

      // multiply the result variable with the number after "x" operator
      result *= double.parse(subList[subList.indexOf("x") + 1]);

      // remove and relocate calculated values with the result
      subList..removeAt(subList.indexOf("x") + 1);
      subList[subList.indexOf("x")] = result.toString();
    }

    // add the first number to result variable for calculation
    result = double.parse(getNumber(subList, 0));

    // make the non priority calculations
    for (int i = 0; i < subList.length; i++) {
      switch (subList[i]) {
        case "+":
          result += double.parse(getNumber(subList, i + 1));
          break;
        case "-":
          result -= double.parse(getNumber(subList, i + 1));
          break;
        default:
          break;
      }
    }

    // remove and relocate the calculated values from top list
    for (var i = list.indexOf("("); i < list.indexOf(")"); i++) {
      list.remove(list[i]);
    }
    list[list.indexOf(")")] = result.toString();
  }

  // calculations wiithout brackets
  // search for "/" operator for priority
  if (list.contains("/")) {
    if (first) {
      // add the first number to result variable
      result = double.parse(backNumber(list, list.indexOf("/") - 1));
      // remove the first number added to result variable from list
      list..removeAt(list.indexOf("/") - 1);
      first = false;
    }
    // divide the result variable with the number after "/" operator
    result /= double.parse(list[list.indexOf("/") + 1]);

    // remove and relocate calculated values with the result
    list..removeAt(list.indexOf("/") + 1);
    list[list.indexOf("/")] = result.toString();
  }
  // search for "x" operator for priority
  if (list.contains("x")) {
    if (first) {
      // add the first number to result variable
      result = double.parse(backNumber(list, list.indexOf("x") - 1));
      // remove the first number added to result variable from list
      list..removeAt(list.indexOf("x") - 1);
      first = false;
    }

    // multiply the result variable with the number after "x" operator
    result *= double.parse(list[list.indexOf("x") + 1]);

    // remove and relocate calculated values with the result
    list..removeAt(list.indexOf("x") + 1);
    list[list.indexOf("x")] = result.toString();
  }

  // add the first number to result variable for calculation
  result = double.parse(getNumber(list, 0));

  // make the non priority calculations
  for (int i = 0; i < list.length; i++) {
    switch (list[i]) {
      case "+":
        result += double.parse(getNumber(list, i + 1));
        break;
      case "-":
        result -= double.parse(getNumber(list, i + 1));
        break;
      default:
        break;
    }
  }
  return result.toStringAsFixed(1);
}

// get numbers between operators
String getNumber(List<String> list, int index) {
  //
  String result = "";
  // loop to add the number at the index of the list to the result string, till the index contains an operator
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

// to get the first number of prioritized operator loop backwards till non number item
String backNumber(List<String> list, int index) {
  String result = "";
  while (index > -1) {
    if (!list[index].contains("(") &&
        !list[index].contains("+") &&
        !list[index].contains("-") &&
        !list[index].contains("x") &&
        !list[index].contains("/")) {
      result += list[index];
      index--;
    } else {
      break;
    }
  }
  return result;
}
