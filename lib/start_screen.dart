import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback startQuiz;

  const StartScreen({super.key, required this.startQuiz});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('assets/images/quiz_logo.png'),
          color: Color.fromARGB(150, 255, 255, 255),
        ),
        // const Opacity(
        //   opacity: 0.75,
        //   child: Image(
        //     image: AssetImage('assets/images/quiz_logo.png'),
        //   ),
        // ),
        const SizedBox(height: 24),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          icon: const Icon(Icons.arrow_forward_rounded),
          label: const Text('Start Quiz'),
          onPressed: startQuiz,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
