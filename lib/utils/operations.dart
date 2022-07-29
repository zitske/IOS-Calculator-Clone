double operation(int mode, double v1, double v2) {
  if (mode == 1) {
    return sum(v1, v2);
  } else if (mode == 2) {
    return sub(v1, v2);
  } else if (mode == 3) {
    return (mult(v1, v2));
  } else if (mode == 4) {
    return (div(v1, v2));
  } else if (mode == 5) {
  } else {
    return 0;
  }
}

double sum(double numer1, double number2) {
  double result = numer1 + number2;
  return result;
}

double sub(double numer1, double number2) {
  double result = numer1 - number2;
  return result;
}

double mult(double numer1, double number2) {
  double result = numer1 * number2;
  return result;
}

double div(double numer1, double number2) {
  double result = numer1 / number2;
  return result;
}
// 0 = empty    
    // 1 = sum
    // 2 = sub
    // 3 = mult
    // 4 = div
    // 5 = porc 