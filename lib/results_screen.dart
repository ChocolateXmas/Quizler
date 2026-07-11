import 'package:flutter/material.dart';
import 'package:quizler/models/quiz_questions.dart';
import 'package:quizler/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.switchStartScreen,
      {super.key, required this.chosenAnswers, required this.questions});

  final List<String> chosenAnswers;
  final List<QuizQuestions> questions;
  final void Function() switchStartScreen;

  List<Map<String, Object>> getSummary() {
    // print('chosenAsn Length: ${chosenAnswers.length}');
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      // print('i: $i');
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
    final List<Map<String, Object>> summaryData = getSummary();
    final int numTotalQuestions = questions.length;
    final int numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length; // check how many correct answers
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
            Container(
              // color: Colors.white,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'You answered $numCorrectAnswers/$numTotalQuestions questions correctly!',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'List of answers:',
              style: TextStyle(
                fontFamily: 'Cursive',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
              onPressed: switchStartScreen,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white24,
                foregroundColor: Colors.white,
                elevation: 35,
                padding: const EdgeInsets.all(20),
              ),
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
