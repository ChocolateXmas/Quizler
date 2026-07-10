class QuizQuestions {
  const QuizQuestions({required this.question, required this.answers});

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    List<String> shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
