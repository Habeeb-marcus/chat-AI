import 'package:chat_ai/models/messgae.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final Message message;
  const TextMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  Container(
      constraints: BoxConstraints(
        maxWidth: width * 0.75,
      ),
    
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: message.backgroundColor,
      
        borderRadius: message.borderRadius,
      ),
      child: Text(message.text!,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: message.textColor,
      ),
      ),
      
    );
  }
}