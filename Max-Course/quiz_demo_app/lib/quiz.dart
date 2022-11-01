import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;
  const Quiz({super.key, required this.questions, required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
            answerText: answer['text'] as String,
            selecHandler: () => answerQuestion(answer['score'] as int),
          );
        }),
      ],
    );
  }
}
