import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Card.filled(
      child: ListTile(
        title: Text('Hey there, subscribe to awesome channel if you want more content like this.',
        overflow: TextOverflow.ellipsis ,
        maxLines: 1,
      
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        ),
        leading: Icon(Icons.chat_outlined),
        trailing: Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}