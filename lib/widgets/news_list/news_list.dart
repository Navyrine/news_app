import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/widgets/news_list/news_item.dart';

class NewsList extends StatelessWidget
{
  const NewsList({
    super.key,
    required this.newsList
  });

  final List<News> newsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (ctx, index) => NewsItem(newsItem: newsList[index])
    );
  }
}
