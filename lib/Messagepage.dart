import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final List<Map<String, String>> _messages = [
    {"title": "Meeting Reminder", "content": "Don't forget about the team meeting tomorrow at 10 AM."},
    {"title": "New Feature", "content": "Check out the new feature in the app and let us know your feedback."},
    {"title": "System Update", "content": "The system will undergo maintenance tonight from 12 AM to 3 AM."},
    {"title": "Welcome", "content": "Welcome to our app! We're glad to have you here."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          final message = _messages[index];
          return ListTile(
            title: Text(message["title"]!),
            subtitle: Text(message["content"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageDetailPage(
                    title: message["title"]!,
                    content: message["content"]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MessageDetailPage extends StatelessWidget {
  final String title;
  final String content;

  MessageDetailPage({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
