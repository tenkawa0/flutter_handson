import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './event.dart';

class Events with ChangeNotifier {
  List<Event> _items = [];

  List<Event> get items {
    return [..._items];
  }

  Future<void> fetch(String keyword) async {
    final params = {
      'keyword': keyword,
    };
    final uri = Uri.https('connpass.com', 'api/v1/event', params);
    try {
      final response = await http.get(uri);
      final data = json.decode(response.body) as Map<String, dynamic>;
      if (data == null) {
        return;
      }
      final eventData = data['events'] as List<dynamic>;

      _items = eventData.map((event) {
        return Event(
          id: event['event_id'],
          title: event['title'] ?? '-',
          description: event['description'] ?? '-',
          owner: event['owner_display_name'] ?? '-',
          series: event['series'] != null ? event['series']['title'] : '-',
          address: event['address'] ?? '-',
          startedAt: DateTime.parse(event['started_at']),
        );
      }).toList();
      notifyListeners();
    } catch (error) {
      print(error);
      _items = [];
      notifyListeners();
    }
  }
}
