import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(
      {super.key, required this.index, required this.isCorrect});

  final int index;
  final bool isCorrect;

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color.fromARGB(120, 0, 0, 0)),
        color: isCorrect ? Colors.lightGreen : Colors.red,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: FittedBox(
          child: Text(
            index.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
