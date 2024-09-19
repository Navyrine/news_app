import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final dateNow = DateTime.now();
final formatter = DateFormat.yMd();

class News {
  News(
    {
      required this.title,
      required this.body
    }
  ): id = uuid.v4(), date = dateNow;

  final String id;
  final DateTime date;
  final String title;
  final String body;

  String get formattedDate {
    return formatter.format(date);
  }
}