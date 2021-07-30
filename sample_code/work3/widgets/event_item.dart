import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/event.dart';

class EventItem extends StatelessWidget {
  final Event event;

  EventItem(this.event);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(event.title),
        subtitle: Text(event.address),
        trailing: Text(
          DateFormat('yyyy-MM-dd').format(event.startedAt),
        ),
      ),
    );
  }
}
