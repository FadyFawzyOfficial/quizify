import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final VoidCallback onPressed;

  const AnswerButton({
    super.key,
    required this.answer,
    required this.onPressed,
  });

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 35, 0, 95),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: onPressed,
      child: Text(answer),
    );
  }
}
