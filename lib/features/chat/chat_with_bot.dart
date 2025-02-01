import 'package:chat_ai/data/messages.dart';
import 'package:chat_ai/features/chat/widgets/media_message.dart';
import 'package:chat_ai/features/chat/widgets/text_message.dart';
import 'package:chat_ai/models/messgae.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatWithBot extends StatelessWidget {
  const ChatWithBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Bot'),
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                //   child: ListView(),
                // ),
                child: ListView.separated(
                    itemBuilder: (context, index){
                      final message = messages[index];

                      return Align(
                        alignment: message.sender == MessageSender.bot 
                        ? Alignment.topLeft : Alignment.topRight,
                        child:message.type == MessageType.text 
                      ? TextMessage( message: message,) : MediaMessage(message: message,)
                        );
                      

                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: messages.length),
              ),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Type a message...',
                  prefixIcon: Icon(Icons.link),
                  suffixIcon: Icon(CupertinoIcons.mic),
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
