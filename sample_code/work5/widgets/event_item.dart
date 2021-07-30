import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../pages/detail.dart';
import '../models/event.dart';

class EventItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);

    return Card(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          Detail.routeName,
          arguments: event,
        ),
        child: ListTile(
          leading: IconButton(
            icon: Icon(
              event.isFavorite ? Icons.favorite : Icons.favorite_outline,
            ),
            onPressed: () => event.toggleFavoriteStatus(),
          ),
          title: Text(event.title),
          subtitle: Text(event.address),
          trailing: Text(
            DateFormat('yyyy-MM-dd').format(event.startedAt),
          ),
        ),
      ),
    );
  }
}
