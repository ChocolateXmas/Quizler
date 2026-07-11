import 'package:flutter/material.dart';
import 'package:quizler/models/quiz_questions.dart';
import 'package:quizler/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.resetScreen,
      {super.key, required this.chosenAnswers, required this.questions});

  final List<String> chosenAnswers;
  final List<QuizQuestions> questions;
  final void Function() resetScreen;

  List<Map<String, Object>> getSummary() {
    print('chosenAsn Length: ${chosenAnswers.length}');
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      print('i: $i');
      summary.add({
        'questionIndex': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X/Y questions!'),
            const SizedBox(height: 30),
            const Text('List of answers:'),
            const SizedBox(height: 30),
            QuestionsSummary(getSummary()),
            const SizedBox(height: 30),
            TextButton(
              onPressed: resetScreen,
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
