import 'package:flutter/material.dart';

import 'questions_screen.dart';
import 'start_screen.dart';

class Quizify extends StatefulWidget {
  const Quizify({super.key});

  @override
  State<Quizify> createState() => _QuizifyState();
}

class _QuizifyState extends State<Quizify> {
  late Widget activeScreen;

  void switchScreen() => setState(() => activeScreen = const QuestionsScreen());

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(startQuiz: switchScreen);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: activeScreen,
      ),
    );
  }
}
