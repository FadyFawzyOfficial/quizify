import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/questions.dart';
import 'quiz_result/quiz_result.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final VoidCallback onQuizRestarted;

  const ResultScreen({
    super.key,
    required this.selectedAnswers,
    required this.onQuizRestarted,
  });

  @override
  Widget build(context) {
    final resultSummary = summary;
    final questionsNumber = questions.length;
    final correctAnswersNumber = resultSummary
        .where((result) => result['user_answer'] == result['correct_answer'])
        .length;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'You answered $correctAnswersNumber out of $questionsNumber questions correctly!',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.purple[100],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: QuizResult(summary: summary),
          ),
          ElevatedButton.icon(
            onPressed: onQuizRestarted,
            icon: const Icon(Icons.replay_rounded),
            label: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }

  List<Map<String, Object>> get summary {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i + 1,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }
}
