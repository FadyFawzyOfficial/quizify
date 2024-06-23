import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('You have answered x of y questions correcltly!'),
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
}
