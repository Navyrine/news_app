import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';

class NewsItem extends StatelessWidget
{
  const NewsItem({
    super.key,
    required this.newsItem
  });

  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      color: const Color.fromARGB(225, 252, 222, 112),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Column(
          children: [
            Text(
              newsItem.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            const SizedBox(height: 10),
            Text(
              newsItem.body,
              style: const TextStyle(
                fontSize: 12
              ),
            )
          ],
        ),
      ),
    );
  }
}