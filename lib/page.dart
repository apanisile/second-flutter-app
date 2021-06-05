import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First Scaffold"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hi!", textScaleFactor: 2.0),
          ],
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("I am a drawer!"),
        ),
      ),
    ));
  }
}
