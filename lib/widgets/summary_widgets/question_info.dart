import 'package:flutter/material.dart';

class QuestionInfo extends StatelessWidget {
  const QuestionInfo(
      {super.key,
      required this.question,
      required this.correctAnswer,
      required this.userAnswer});

  final String question;
  final String correctAnswer;
  final String userAnswer;

  @override
  Widget build(context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            correctAnswer,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            userAnswer,
            style: const TextStyle(
              color: Colors.black26,
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
