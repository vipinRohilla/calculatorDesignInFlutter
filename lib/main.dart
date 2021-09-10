import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calculatorButton(
      String buttonText, Color buttonColor, Color textColor) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(8),
            primary: buttonColor,
            fixedSize: Size(85, 85)),
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 34,
            color: textColor,
          ),
        ),
        // shape: CircleBorder(),
        // color: buttonColor,
        // padding: EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('AC', Colors.grey, Colors.black),
                calculatorButton('+/-', Colors.grey, Colors.black),
                calculatorButton('%', Colors.grey, Colors.black),
                calculatorButton('/', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('7', Colors.grey.shade900, Colors.white),
                calculatorButton('8', Colors.grey.shade900, Colors.white),
                calculatorButton('9', Colors.grey.shade900, Colors.white),
                calculatorButton('x', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('4', Colors.grey.shade900, Colors.white),
                calculatorButton('5', Colors.grey.shade900, Colors.white),
                calculatorButton('6', Colors.grey.shade900, Colors.white),
                calculatorButton('-', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('1', Colors.grey.shade900, Colors.white),
                calculatorButton('2', Colors.grey.shade900, Colors.white),
                calculatorButton('3', Colors.grey.shade900, Colors.white),
                calculatorButton('+', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(34, 20, 130, 20),
                    primary: Colors.grey.shade900,
                  ),
                  onPressed: () {},
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                calculatorButton('.', Colors.grey.shade900, Colors.white),
                calculatorButton('=', Colors.orange, Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}
