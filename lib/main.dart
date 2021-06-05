import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State {
  String _pressedOrNot = "You haven't pressed the button";

  void _changeText() {
    setState(_getNewText);
  }

  void _getNewText() {
    _pressedOrNot = "You've pressed the button";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
      ),
      body: Center(
        child: Text(
          _pressedOrNot,
        ),
      ),
      drawer: Drawer(
        child: Center(child: Text("Hi")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeText,
      ),
    );
  }
}
