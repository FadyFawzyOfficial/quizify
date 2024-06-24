import 'package:flutter/material.dart';

import 'result_item.dart';

class QuizResult extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuizResult({super.key, required this.summary});

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: [for (var result in summary) ResultItem(result: result)],
        ),
      ),
    );
  }
}
