import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.uuuu
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
