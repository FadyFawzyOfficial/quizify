import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'questions_screen.dart';
import 'result_screen.dart';
import 'start_screen.dart';

enum ActiveScreen { start, questions, result }

class Quizify extends StatefulWidget {
  const Quizify({super.key});

  @override
  State<Quizify> createState() => _QuizifyState();
}

class _QuizifyState extends State<Quizify> {
  List<String> answers = [];
  var activeScreen = ActiveScreen.start;

  void startQuiz() => setState(() => activeScreen = ActiveScreen.questions);

  void answerQuestion(String answer) {
    answers.add(answer);

    if (answers.length == questions.length) {
      setState(() {
        answers = [];
        activeScreen = ActiveScreen.result;
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: switch (activeScreen) {
          ActiveScreen.start => StartScreen(startQuiz: startQuiz),
          ActiveScreen.questions => QuestionsScreen(onAnswered: answerQuestion),
          ActiveScreen.result => const ResultScreen(),
        },
      ),
    );
  }
}
