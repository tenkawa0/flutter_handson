import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      routes: {
        Detail.routeName: (_) => Detail(),
      },
    );
  }
}
