import 'package:flutter/material.dart';

import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  const ResultScreen({super.key, required this.selectedAnswers});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('You have answered x of y questions correctly!'),
          const Text('Result List'),
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
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }
}
