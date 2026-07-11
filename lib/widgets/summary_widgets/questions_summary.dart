import 'package:flutter/material.dart';
import 'package:quizler/widgets/summary_widgets/question_index.dart';
import 'package:quizler/widgets/summary_widgets/question_info.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      QuestionIndex(
                        index: (data['questionIndex'] as int) + 1,
                        isCorrect:
                            data['correct_answer'] == data['user_answer'],
                      )
                    ],
                  ),
                  QuestionInfo(
                    question: data['question'] as String,
                    correctAnswer: data['correct_answer'] as String,
                    userAnswer: data['user_answer'] as String,
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
