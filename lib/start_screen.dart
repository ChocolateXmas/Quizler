import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/flutter-logo.png',
            width: 300,
            color: const Color.fromARGB(175, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Flutter Quiz - the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Cursive',
              fontSize: 28,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.access_time_filled),
              label: const Text('Lets Start!'),
            ),
          ),
        ],
      ),
    );
  }
}
