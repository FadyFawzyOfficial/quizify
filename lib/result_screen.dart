import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'quiz_result.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  const ResultScreen({super.key, required this.selectedAnswers});

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
            'You have answered $correctAnswersNumber of $questionsNumber questions correctly!',
          ),
          QuizResult(summary: summary),
          ElevatedButton.icon(
            onPressed: () {},
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
