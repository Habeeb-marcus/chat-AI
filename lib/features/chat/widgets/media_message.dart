import 'package:chat_ai/models/messgae.dart';
import 'package:flutter/material.dart';

class MediaMessage extends StatelessWidget {

  final Message message;
  const MediaMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width * 0.7,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: width * 0.7,
              ),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: message.backgroundColor,
                borderRadius: message.borderRadius,
              ),
              child: Column(
                children: [
                    // image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        message.mediaUrl!,
                        
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
            
                    // text
                    Text(message.text!, style: TextStyle(color: message.textColor),),
            
                ],
              ),
            ),
          ),
          Row(
            children: [
              IconButton.outlined(onPressed: (){}, icon: Icon(Icons.thumb_up)),
              IconButton.outlined(onPressed: (){}, icon: Icon(Icons.thumb_down)),
              Spacer(),
              IconButton.outlined(onPressed: (){}, icon: Icon(Icons.copy))
            ],
          )
        ],
      ),
    );
  }
}