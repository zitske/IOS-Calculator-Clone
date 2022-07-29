import 'package:flutter/material.dart';

String activatecheck(bool stats) {
  if (stats) {
    return "C";
  } else {
    return "AC";
  }
}

void addstring(TextEditingController controller, String text) {
  controller.text = controller.text + text;
}

void empty(TextEditingController controller) {
  controller.text = "0";
}
