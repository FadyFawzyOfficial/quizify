class Question {
  final String question;
  final List<String> answers;

  const Question({required this.question, required this.answers});

  List<String> get shuffledAnswers => List.from(answers)..shuffle();
}
