import 'package:flutter/material.dart';
import 'package:quizler/questions_screen.dart';
import 'package:quizler/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

const String startScreenId = 'start-screen';
const String questionsScreenId = 'questions-screen';

class _QuizState extends State<Quiz> {
  var activeScreen = startScreenId;

  void switchScreen() {
    setState(() {
      activeScreen = questionsScreenId;
    });
  }

  @override
  Widget build(context) {
    var screenWidget = activeScreen == startScreenId
        ? StartScreen(switchScreen)
        : const QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blueAccent,
                Colors.deepOrangeAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
