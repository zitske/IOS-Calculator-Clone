import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:calculator/utils/display.dart';
import 'package:calculator/utils/operations.dart';
import 'package:flutter/material.dart';

import 'colors/colors.dart';
import 'components/buttons.dart';
import 'utils/stats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double buttonsize = 85;

  @override
  Widget build(BuildContext context) {
    TextEditingController displayCotroller = TextEditingController();
    displayCotroller.text = "0";
    double display = 0;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool activated = true;
    double v1 = 0;
    double v2 = 0;
    int op = 0;
    // 0 = empty
    // 1 = sum
    // 2 = sub
    // 3 = mult
    // 4 = div
    // 5 = porc

    @override
    void initState() {
      super.initState();
      displayCotroller.addListener(() {
        print(displayCotroller.text);
      });
    }

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            child: AutoSizeTextField(
                                enabled: false,
                                textAlign: TextAlign.end,
                                controller: displayCotroller,
                                style: TextStyle(
                                    fontSize: buttonsize * 1.3,
                                    color: white,
                                    fontWeight: FontWeight.w200)),
                          ),
                        ),
                        SizedBox(
                          width: buttonsize / 6,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.66,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          roundedButton(
                              buttonsize,
                              grey,
                              activatecheck(activated),
                              black,
                              displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, grey, "+/-", black, displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, grey, "%", black, displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, orange, "÷", white, displayCotroller),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "7", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "8", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "9", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, orange, "x", white, displayCotroller),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "4", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "5", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "6", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, orange, "-", white, displayCotroller),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "1", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "2", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, "3", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, orange, "+", white, displayCotroller),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          doubledRoundedButton(
                              buttonsize, darkgrey, () => {}, "0", white),
                          Spacer(),
                          roundedButton(buttonsize, darkgrey, ",", white,
                              displayCotroller),
                          Spacer(),
                          roundedButton(
                              buttonsize, orange, "=", white, displayCotroller),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
