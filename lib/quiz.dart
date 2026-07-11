import 'package:flutter/material.dart';
import 'package:quizler/models/quiz_questions.dart';
import 'package:quizler/screens/questions_screen.dart';
import 'package:quizler/screens/start_screen.dart';
import 'package:quizler/screens/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

const String startScreenId = 'start-screen';
const String questionsScreenId = 'questions-screen';
const String resultsScreenId = 'results-screen';

class _QuizState extends State<Quiz> {
  final List<QuizQuestions> selectedQuestions = [];
  final List<String> selectedAnswers = [];
  var activeScreen = startScreenId;

  void getQuestion(QuizQuestions question) => selectedQuestions.add(question);

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questionsAmount) {
      setState(() {
        activeScreen = resultsScreenId;
      });
    }
  }

  void switchQuizScreen() {
    setState(() {
      activeScreen = questionsScreenId;
    });
  }

  void switchStartScreen() {
    setState(() {
      // clear the questions & answers list when starting a new quiz
      selectedAnswers.clear();
      selectedQuestions.clear();
      activeScreen = startScreenId;
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchQuizScreen);
    if (activeScreen == questionsScreenId) {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        onViewQuestion: getQuestion,
      );
    } else if (activeScreen == resultsScreenId) {
      screenWidget = ResultsScreen(switchStartScreen,
          chosenAnswers: selectedAnswers, questions: selectedQuestions);
    }

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
