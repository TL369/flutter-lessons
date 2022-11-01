import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final void Function() resetHandler;
  const Result({
    Key? key,
    required this.scoreResult,
    required this.resetHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your score: $scoreResult',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Reset Quiz!'),
          ),
        ],
      ),
    );
  }
}
