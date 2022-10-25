import 'package:flutter/material.dart';
import 'package:flutter_create/quiz.dart';
import 'package:flutter_create/screens/result.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestions(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, dynamic>> _questions = const [
    {
      'QuestionText': 'whats you favorite color ?',
      'answers': [
        {'text': 'white', 'score': 2},
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 4},
        {'text': 'blue', 'score': 6}
      ],
    },
    {
      'QuestionText': 'whats you favorite city ?',
      'answers': [
        {'text': 'Kerman', 'score': 2},
        {'text': 'Yazd', 'score': 2},
        {'text': 'Isfahan', 'score': 2},
        {'text': 'Shiraz', 'score': 2}
      ],
    },
    {
      'QuestionText': 'whats you favorite car company ?',
      'answers': [
        {'text': 'bmw', 'score': 5},
        {'text': 'ferrari', 'score': 2},
        {'text': 'benz', 'score': 3},
        {'text': 'irankhodro', 'score': 1}
      ],
    },
    {
      'QuestionText': 'whats you favorite habit ?',
      'answers': [
        {'text': 'Music', 'score': 7},
        {'text': 'Movie', 'score': 6},
        {'text': 'Book', 'score': 8}
      ],
    },
    {
      'QuestionText': 'whats you favorite animal ?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 3},
        {'text': 'Hours', 'score': 5},
        {'text': 'Sheep', 'score': 2}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'LIKE',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestions: _answerQuestions,
              questionIndex: _questionIndex)
          : Result(
              result: _totalScore,
            ),
    );
  }
}
