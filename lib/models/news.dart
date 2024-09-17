import 'package:uuid/uuid.dart';

const uuid = Uuid();

class News {
  News(
    {
      required this.title,
      required this.body
    }
  ): id = uuid.v4();

  final String id;
  final String title;
  final String body;
}