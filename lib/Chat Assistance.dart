//chat page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Send an initial message when the page loads
    _sendInitialMessage();
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add({"sender": "user", "text": _controller.text});
        _controller.clear();
      });
      _autoReply(_controller.text);
    }
  }


  void sendMessage() {
    String userMessage = _controller.text.trim();
    if (userMessage.isNotEmpty) {
      setState(() {
        _messages.add({"sender": "user", "text": userMessage});
        _controller.clear();
      });
      _autoReply(userMessage);
    }
  }



  void _autoReply(String userMessage) {
    String reply = "Thank you for your message! How can I assist you further?";

    // Simple pattern matching for more specific replies
    if (userMessage.contains("hello") || userMessage.contains("hi")) {
      reply = "Hello! How can I help you today?";
    } else if (userMessage.contains("help") || userMessage.contains("assist")) {
      reply = "I am here to help! What do you need assistance with?";
    }

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _messages.add({
          "sender": "bot",
          "text": reply,
        });
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Assistance'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment: message["sender"] == "user"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: message["sender"] == "user"
                          ? Colors.blue[200]
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message["text"]!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _sendInitialMessage extends StatefulWidget {
  const _sendInitialMessage({super.key});

  @override
  State<_sendInitialMessage> createState() => _sendInitialMessageState();
}

class _sendInitialMessageState extends State<_sendInitialMessage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
