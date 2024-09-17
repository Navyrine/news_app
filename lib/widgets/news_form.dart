import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';

class NewsForm extends StatefulWidget
{
  const NewsForm({
    super.key,
    required this.onAddNews
  });

  final void Function(News news) onAddNews;

  @override
  State<StatefulWidget> createState() {
    return _NewsFormState();
  }
}

class _NewsFormState extends State<NewsForm>
{
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  void _submitForm()
  {
    if (_titleController.text.isEmpty || _bodyController.text.isEmpty) 
    {
      showDialog(
        context: context, 
        builder: (ctx) => AlertDialog(
          title: const Text("Invalid Input"),
          content: const Text("Please make sure a valid title and body news was entered!!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text("Okay")
            )
          ],
        )
      );
      return;  
    }
    widget.onAddNews(
      News(
        title: _titleController.text, 
        body: _bodyController.text
      )
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              label: Text("Title News"),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: TextField(
              controller: _bodyController,
              decoration: const InputDecoration(
                label: Text("Body News"),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                alignLabelWithHint: true
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text("Cancel")
              ),
              ElevatedButton(
                onPressed: _submitForm, 
                child: const Text("Save")
              )
            ],
          )
        ],
      ),
    );
  }
}