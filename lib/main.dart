import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';
import 'pages/detail.dart';
import 'models/events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Events(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
        routes: {
          Detail.routeName: (_) => Detail(),
        },
      ),
    );
  }
}
