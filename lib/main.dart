import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) => runApp(MyButton());

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Assignment 2',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bgColors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.pink
  ];

  var buttonBgColors = [
    Colors.lightBlue,
    Colors.accents,
    Colors.tealAccent,
    Colors.indigo
  ];

  var bgCurrentColor = Colors.white;
  var buttonBgCurrentColor = Colors.black;

  setRandomColor() {
    var rndBg = Random().nextInt(bgColors.length);
    var rndBgButton = Random().nextInt(buttonBgColors.length);

    setState(() {
      bgCurrentColor = bgColors[rndBg];
      buttonBgCurrentColor = buttonBgColors[rndBgButton];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgCurrentColor,
      child: Center(
        child: RaisedButton(
          color: buttonBgCurrentColor,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text(
            'Change it!',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: setRandomColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}
