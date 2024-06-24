import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'question_identifier.dart';

class ResultItem extends StatelessWidget {
  final Map<String, Object> result;

  const ResultItem({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          QuestionIdentifier(
            questionNumber: result['question_index'] as int,
            isCorrectAnswer: result['user_answer'] == result['correct_answer'],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  result['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  result['user_answer'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.purpleAccent[100],
                  ),
                ),
                Text(
                  result['correct_answer'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.blueAccent[100],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
