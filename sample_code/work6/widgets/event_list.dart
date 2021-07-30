import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './event_item.dart';
import '../models/events.dart';

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<Events>(context);

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: events.items[i],
        child: EventItem(),
      ),
      itemCount: events.items.length,
    );
  }
}
