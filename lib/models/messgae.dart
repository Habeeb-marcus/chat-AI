import 'package:flutter/material.dart';

class Message{
  final MessageType type;
  final MessageSender sender;
  final String? text;
  final String? mediaUrl;

  Message({required this.type, required this.sender, this.text, this.mediaUrl});

}


enum MessageType{ text, media, }
enum MessageSender{ user, bot, }


extension MessageExtension on Message{
  // final theme = Theme.of(context);
  Color get backgroundColor{
    switch (sender) {
      case MessageSender.user:
        return Color(0XFF5ad7ff);
      case MessageSender.bot:
        return Color(0XFF212629);
        // human 7dd4fb
    }
  }

  Color get textColor{
    switch (sender) {
      case MessageSender.user:
        return Color(0XFF232729);
      case MessageSender.bot:
        return Colors.white;
    }
  }
   
  BorderRadius get borderRadius{
    switch (sender) {
      case MessageSender.user:
        return BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(4),
        );
      case MessageSender.bot:
        return BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(20),
        );
    }
  }

}