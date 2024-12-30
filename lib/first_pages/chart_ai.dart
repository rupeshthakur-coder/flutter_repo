import 'package:flutter/material.dart';
import 'package:flutter_rapo/first_pages/button_card.dart';

class ChatAi extends StatelessWidget {
  const ChatAi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.folder),
                ],
              ),
              Spacer(),
              Text(
                'Chart AI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                'Technical analysis for any trading chart in seconds',
              ),
              Spacer(),
              Spacer(),
              Spacer(),
              ButtonCard(
                title: 'Analyse Chart',
                text: 'Perform detailed analysis of charts and graphs.',
                icon: null,
                color: Colors.green,
                width: double.infinity,
              ),
              Spacer(),
              Text(
                'This is random text that needs to be displayed below about disclaimer of the app',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
