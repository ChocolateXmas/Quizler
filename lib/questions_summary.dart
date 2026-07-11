import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

//   summary.add({
//   'questionIndex': i,
//   'question': questions[i].question,
//   'correct_answer': questions[i].answers[0],
//   'user_answer': chosenAnswers[i]
// });

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
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color.fromARGB(120, 0, 0, 0)),
                          color: data['correct_answer'] == data['user_answer']
                              ? Colors.lightGreen
                              : Colors.red,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: FittedBox(
                            child: Text(
                              ((data['questionIndex'] as int) + 1).toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question'] as String),
                        const SizedBox(height: 15),
                        Text(data['correct_answer'] as String),
                        const SizedBox(height: 15),
                        Text(data['user_answer'] as String),
                        const SizedBox(height: 15),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
