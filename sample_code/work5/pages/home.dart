import 'package:flutter/material.dart';
import '../widgets/event_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connpass App'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                '検索ボックス',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.cyan),
              child: EventList(),
            ),
          ),
        ],
      ),
    );
  }
}
