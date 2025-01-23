import 'package:chat_ai/features/chat/speak_to_ai_page.dart';
import 'package:chat_ai/features/home/widgets/history_card.dart';
import 'package:chat_ai/features/home/widgets/idea_card.dart';
import 'package:chat_ai/features/home/widgets/premium_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 7,
              children: [
                // premium card
                const PremiumCard(),
                // idea cards
                Row(
                  spacing: 10,
                  children: [
                  IdeaCard(
                    text: 'Generate ideas and write articles',
                    icon: Icons.edit_outlined,
                    onPressed: (){
                      // navigate to ideas page
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SpeakToAIPage()));
                    },
                  ),
                  IdeaCard(
                    text: 'Generate pictures & art',
                    icon: Icons.picture_in_picture_alt,
                  ),
                  ],
                ),
                SizedBox(height: 10),
                Text('History',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 10),
                Wrap(
                  children: List.generate(8, ( index) => const HistoryCard()),
                ),

              
                // history text

                // history list 
              ],
            ),
          ),
        ),
      ),
    );
  }

}