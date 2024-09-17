import 'package:flutter/material.dart';

class NewsForm extends StatefulWidget
{
  const NewsForm({
    super.key
  });

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
                onPressed: () {}, 
                child: const Text("Save")
              )
            ],
          )
        ],
      ),
    );
  }
}