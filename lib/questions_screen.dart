import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'answer_button.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questions[questionIndex].question,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          for (var answer in questions[questionIndex].shuffledAnswers)
            AnswerButton(
              answer: answer,
              onPressed: () => setState(() => questionIndex++),
            ),
        ],
      ),
    );
  }
}
