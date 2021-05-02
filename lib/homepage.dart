import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var num1 = 0, num2 = 0, res = 0;

  final TextEditingController number1 = TextEditingController(text: "0");
  final TextEditingController number2 = TextEditingController(text: "0");

  void sum() {
    setState(() {
      num1 = int.parse(number1.text);
      num2 = int.parse(number2.text);
      res = num1 + num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(number1.text);
      num2 = int.parse(number2.text);
      res = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(number1.text);
      num2 = int.parse(number2.text);
      res = num1 ~/ num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(number1.text);
      num2 = int.parse(number2.text);
      res = num1 - num2;
    });
  }

  void clearAll() {
    setState(() {
      number1.text = "";
      number2.text = "";
      res = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Doodle Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(42),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "First number"),
              style: TextStyle(fontSize: 23),
              controller: number1,
            ),
            
            Padding(padding: EdgeInsets.only(top: 30),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Second number"),
              controller: number2,
              style: TextStyle(fontSize: 23),
            ),
            Padding(
              padding: EdgeInsets.all(22),
            ),
            Text(
              "Output: ",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$res",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 27),
                  ),
                  onPressed: sum,
                 textColor: Colors.white,
                  color: Colors.blueAccent,
                  minWidth: 20,
                ),
                MaterialButton(
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 27),
                  ),
                  onPressed: sub,
                 textColor: Colors.white,
                  color: Colors.blueAccent,
                  minWidth: 20,
                ),
                MaterialButton(
                  child: Text(
                    "X",
                    style: TextStyle(fontSize: 27),
                  ),
                  onPressed: mul,
                 textColor: Colors.white,
                  color: Colors.blueAccent,
                  minWidth: 20,
                ),
                MaterialButton(
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 27),
                  ),
                  onPressed: div,
                 textColor: Colors.white,
                  color: Colors.blueAccent,
                  minWidth: 20,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Clear", style: TextStyle(fontSize: 29,),),
                  onPressed: clearAll,
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
