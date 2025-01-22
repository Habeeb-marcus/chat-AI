import 'package:flutter/material.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Card.filled(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          spacing: 10,
          children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Premium Plan',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold, 
                color: theme.colorScheme.onPrimary,
              ) ,),
              Text('Harness the full power of AI with Premium Plan',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),),
              SizedBox(height: 10), 
              ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.bolt,
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  iconColor: Colors.white,
                ),
                label: Text('Upgrade Now',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
              ),
          ))],
          )),
          Image.asset('assets/love-robot.png',
          width: 120,
          ),
          
        ],
          ),
      ),
    );
  }
}