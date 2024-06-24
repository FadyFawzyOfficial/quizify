import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuizResult({super.key, required this.summary});

  @override
  Widget build(context) {
    return Column(
      children: [
        for (var result in summary)
          Row(
            children: [
              Text('${result['question_index'] as int}'),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(result['question'] as String),
                    Text(result['user_answer'] as String),
                    Text(result['correct_answer'] as String),
                  ],
                ),
              )
            ],
          ),
      ],
    );
  }
}
