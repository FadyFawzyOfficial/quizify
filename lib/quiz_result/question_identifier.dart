import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionNumber;
  final bool isCorrectAnswer;

  const QuestionIdentifier({
    super.key,
    required this.questionNumber,
    required this.isCorrectAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:
          isCorrectAnswer ? Colors.blueAccent[100] : Colors.purpleAccent[100],
      child: Text('$questionNumber'),
    );
  }
}
