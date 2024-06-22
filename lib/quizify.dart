import 'package:flutter/material.dart';

import 'questions_screen.dart';
import 'start_screen.dart';

class Quizify extends StatefulWidget {
  const Quizify({super.key});

  @override
  State<Quizify> createState() => _QuizifyState();
}

class _QuizifyState extends State<Quizify> {
  var isQuizStarted = false;

  void startQuiz() => setState(() => isQuizStarted = true);

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: isQuizStarted
            ? const QuestionsScreen()
            : StartScreen(startQuiz: startQuiz),
      ),
    );
  }
}
