import 'package:flutter/material.dart';

import 'start_screen.dart';

void main() => runApp(const Quizify());

class Quizify extends StatelessWidget {
  const Quizify({super.key});

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
