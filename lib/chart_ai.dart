import 'package:flutter/material.dart';
import 'package:flutter_rapo/button_card.dart';

class ChatAi extends StatelessWidget {
  const ChatAi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.folder,
                )
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
            Text('Technical analysis for any tranding chart in seconds'),
            Spacer(),
            ButtonCard(
              title: 'Analyse Chart',
              icon: null,
            ),
            Spacer(),
            Text(' this is random text need to be displayed below about disclamer of app  ')
          ],
        ),
      ),
    );
  }
}
