import 'package:calculator/utils/display.dart';
import 'package:flutter/material.dart';

Widget roundedButton(double buttonsize, Color color, String text,
    Color textcolor, TextEditingController controller) {
  return InkWell(
    onTap: () {
      updatetxt(controller, text);
      print("$text click OK!");
    },
    child: Container(
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textcolor,
              fontSize: buttonsize / 2.2,
            ),
          ),
        ),
        height: buttonsize,
        width: buttonsize,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(buttonsize / 2)),
            color: color)),
  );
}

Widget doubledRoundedButton(double buttonsize, Color color, void function(),
    String text, Color textcolor) {
  return InkWell(
    onTap: () {
      print("$text click OK!");
      function;
    },
    child: Container(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            SizedBox(
              width: buttonsize / 3,
            ),
            Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: textcolor,
                fontSize: buttonsize / 2.2,
              ),
            ),
          ],
        ),
        height: buttonsize,
        width: buttonsize * 2.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(buttonsize / 2)),
            color: color)),
  );
}
