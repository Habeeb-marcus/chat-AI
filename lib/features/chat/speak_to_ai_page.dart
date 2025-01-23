import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeakToAIPage extends StatelessWidget {
  const SpeakToAIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text('Speak to AI Bot'),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset(
              'assets/robot.png',
              width: 300,
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Describe and show me the perfect vacation spot',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                children: [
                  TextSpan(
                    text: ' (e.g. beach, mountain, city)',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton.filledTonal(
            onPressed: (){}, 
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 81, 86, 88),
              // Color(0XFF232729),
            ),
            icon: Icon(Icons.chat_outlined,
            color: Colors.white,),),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0XFF232729),
                  // Color.fromARGB(255, 64, 63, 63),
                  // Color.fromARGB(255, 60, 61, 62),
                  // blurRadius: 10,
                  spreadRadius: 15,
                  )
              ]
            ),
            height: 70,
            width: 70,
            child: IconButton.filledTonal(
              onPressed: (){}, 
              style: IconButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 81, 86, 88),
              ),
              icon: Icon(CupertinoIcons.mic_fill,
              color: Colors.white,),),
          ),
          SizedBox(width: 10),
          IconButton.filledTonal(
            onPressed: (){}, 
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 81, 86, 88),
            ),
            icon: Icon(Icons.more_horiz,
            color: Colors.white,),),
          SizedBox(width: 10),
 
       
        ],
      ),
    );
  }
}
