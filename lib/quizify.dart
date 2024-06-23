import 'package:flutter/material.dart';

import 'questions_screen.dart';
import 'start_screen.dart';

class Quizify extends StatefulWidget {
  const Quizify({super.key});

  @override
  State<Quizify> createState() => _QuizifyState();
}

class _QuizifyState extends State<Quizify> {
  final List<String> answers = [];
  var isQuizStarted = false;

  void startQuiz() => setState(() => isQuizStarted = true);

  void answerQuestion(String answer) => answers.add(answer);

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: isQuizStarted
            ? QuestionsScreen(onAnswered: answerQuestion)
            : StartScreen(startQuiz: startQuiz),
      ),
    );
  }
}
