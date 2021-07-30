import 'package:flutter/material.dart';
import './event_item.dart';
import '../models/event.dart';

class EventList extends StatelessWidget {
  List<Event> events = [
    Event(
      id: 'test1',
      title: 'Test1',
      description: 'sample1',
      owner: 'tenkawa',
      series: 'sannomiyadev',
      address: '神戸市三宮',
      startedAt: DateTime.now(),
    ),
    Event(
      id: 'test2',
      title: 'Test2',
      description: 'sample2',
      owner: 'tenkawa',
      series: 'sannomiyadev',
      address: '神戸市三宮',
      startedAt: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (ctx, i) => EventItem(events[i]),
      itemCount: events.length,
    );
  }
}
