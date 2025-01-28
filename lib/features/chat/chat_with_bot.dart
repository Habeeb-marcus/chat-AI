
import 'package:flutter/material.dart';
class ChatWithBot extends StatelessWidget{
    const ChatWithBot({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Bot'),
      ),
      body: Center(
        child: Text('Chat with Bot'),
      ),
    );
  }
}