import 'package:flutter/material.dart';
import 'package:flutter_rapo/first_pages/button_card.dart';
import 'package:flutter_rapo/second_page.dart/graph_page.dart';

class DetailedAnalysis extends StatelessWidget {
  const DetailedAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.folder),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              GraphPage(),
              SizedBox(
                height: 16,
              ),
              Text(
                "General Trend Analysis",
              ),
              SizedBox(
                height: 8,
              ),
              Text('random paragraph about context '),
              SizedBox(
                height: 16,
              ),
              Text("Indicator Analysis"),
              SizedBox(
                height: 8,
              ),
              Text('random paragraph about context'),
              Spacer(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonCard(title: 'Save Analysis', text: '', icon: null, color: Colors.green, width: 150),
                      ButtonCard(title: 'Rescan', text: '', icon: null, color: Colors.red, width: 150),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Disclamer of app')
                ],
              ),
            ])),
      ),
    );
  }
}
