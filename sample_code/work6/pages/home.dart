import 'package:flutter/material.dart';
import '../widgets/event_list.dart';
import '../widgets/search_form.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Connpass App'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: SearchForm(),
          ),
          Expanded(
            child: EventList(),
          ),
        ],
      ),
    );
  }
}
