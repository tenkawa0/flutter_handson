class Event {
  final String id;
  final String title;
  final String description;
  final String owner;
  final String series;
  final String address;
  final DateTime startedAt;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.owner,
    required this.series,
    required this.address,
    required this.startedAt,
  });
}
