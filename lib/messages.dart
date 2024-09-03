import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          MessageCard(
              sender: 'Linda Brown',
              lastMessage: 'Looking forward to our meeting.'),
          MessageCard(
              sender: 'Mary Johnson', lastMessage: 'Thanks for the advice!'),
        ],
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String sender;
  final String lastMessage;

  const MessageCard(
      {super.key, required this.sender, required this.lastMessage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(sender, style: Theme.of(context).textTheme.titleLarge),
        subtitle: Text(lastMessage),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Navigate to message thread
        },
      ),
    );
  }
}

