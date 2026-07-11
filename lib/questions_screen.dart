import 'package:flutter/material.dart';
import 'package:quizler/data/questions.dart';
import 'package:quizler/answer_button.dart';
import 'package:quizler/models/quiz_questions.dart';

const int questionsAmount = 7;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key, required this.onSelectAnswer, required this.onViewQuestion});

  final void Function(String answer) onSelectAnswer;
  final void Function(QuizQuestions question) onViewQuestion;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String answer, QuizQuestions question) {
    widget.onSelectAnswer(answer);
    widget.onViewQuestion(question);
    setState(() {
      ++currentQuestionIndex;
    });
  }

  @override
  Widget build(context) {
    QuizQuestions currentQuestionList =
        Questions(questionsAmount).questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestionList.question,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestionList.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer, currentQuestionList);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
