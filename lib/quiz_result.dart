import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizResult extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuizResult({super.key, required this.summary});

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var result in summary)
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        result['user_answer'] == result['correct_answer']
                            ? Colors.blueAccent[100]
                            : Colors.purpleAccent[100],
                    child: Text('${result['question_index'] as int}'),
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
          ],
        ),
      ),
    );
  }
}
