import 'package:chat_ai/models/messgae.dart';

List<Message> messages = [
  Message(
      type: MessageType.text,
      sender: MessageSender.user,
      text:
          'Describe and show me a perfect vacation spot on an Island in the ocean'),
 
  Message(
      type: MessageType.media,
      sender: MessageSender.bot,
      text:
          'Imagine yourself on an idyllic island in the middle of the vast ocean, where turquiose water and powdery white sand surround you. This is a perfect vacation spot in a tropical paradise that offers a blend of tranquility and adventure',
      mediaUrl:
          'https://images.unsplash.com/photo-1468413253725-0d5181091126?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
];

