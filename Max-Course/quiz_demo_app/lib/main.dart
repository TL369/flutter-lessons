import 'dart:math';

import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Demo',
      theme: ThemeData(),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': "White", 'score': Random().nextInt(10)},
        {'text': "Green", 'score': Random().nextInt(10)},
        {'text': "Red", 'score': Random().nextInt(10)},
        {'text': "Blue", 'score': Random().nextInt(10)},
        {'text': "Grey", 'score': Random().nextInt(10)},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': "Lion", 'score': Random().nextInt(10)},
        {'text': "Tiger", 'score': Random().nextInt(10)},
        {'text': "Cat", 'score': Random().nextInt(10)},
        {'text': "Dog", 'score': Random().nextInt(10)},
        {'text': "Fox", 'score': Random().nextInt(10)},
      ],
    },
    {
      'questionText': "What's your favorite country?",
      'answers': [
        {'text': "Japan", 'score': Random().nextInt(10)},
        {'text': "France", 'score': Random().nextInt(10)},
        {'text': "Vietnam", 'score': Random().nextInt(10)},
        {'text': "England", 'score': Random().nextInt(10)},
        {'text': "America", 'score': Random().nextInt(10)},
      ],
    },
  ];

  int _questionIndex = 0;

  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuestion() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        centerTitle: true,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
            )
          : Result(
              scoreResult: _totalScore,
              resetHandler: _resetQuestion,
            ),
    );
  }
}
