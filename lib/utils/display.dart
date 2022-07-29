import 'package:flutter/widgets.dart';

String concat(double v1, double v2) {
  return v1.toString() + v2.toString();
}

void updatetxt(TextEditingController controllers, String number) {
  controllers.text = controllers.text + number;
  print(controllers.text);
}
