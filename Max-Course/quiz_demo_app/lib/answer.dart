import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() selecHandler;
  const Answer({
    Key? key,
    required this.answerText,
    required this.selecHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
      child: ElevatedButton(
        onPressed: selecHandler,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(answerText),
        ),
      ),
    );
  }
}
