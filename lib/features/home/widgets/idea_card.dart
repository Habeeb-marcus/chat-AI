import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  const IdeaCard({super.key, required this.text, required this.icon});

final String text;
final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: SizedBox(
        height: 155,
        child: Card.filled(
          color: Color( 0XFF313638),
          child: Padding( 
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 28,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0XFF212629),
                  // #2d3739
                  child: Icon(
                    icon,
                  ),
                ),
                Text(
                  text,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
