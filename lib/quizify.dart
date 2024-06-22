import 'package:flutter/material.dart';

import 'start_screen.dart';

class Quizify extends StatefulWidget {
  const Quizify({super.key});

  @override
  State<Quizify> createState() => _QuizifyState();
}

class _QuizifyState extends State<Quizify> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: StartScreen(),
      ),
    );
  }
}
