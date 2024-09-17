import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/widgets/news_list/news_item.dart';

class NewsList extends StatelessWidget
{
  const NewsList({
    super.key,
    required this.newsList,
    required this.onRemoveNewsItem
  });

  final List<News> newsList;
  final void Function(News news) onRemoveNewsItem;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: const Color.fromARGB(230, 232, 92, 13),
        ),
        onDismissed: (direction) {
          onRemoveNewsItem(newsList[index]);
        },
        key: ValueKey(newsList[index]), 
        child: NewsItem(newsItem: newsList[index])
      )
    );
  }
}
