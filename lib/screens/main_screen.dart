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

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, dynamic>> _questions = const [
    {
      'QuestionText': 'whats you favorite color ?',
      'answers': ['white', 'red', 'pink', 'blue'],
    },
    {
      'QuestionText': 'whats you favorite city ?',
      'answers': ['kerman', 'shiraz', 'isfahan', 'Yazd'],
    },
    {
      'QuestionText': 'whats you favorite car company ?',
      'answers': ['bmw', 'ferrari', 'benz', 'irankhodro'],
    },
    {
      'QuestionText': 'whats you favorite habit ?',
      'answers': ['movie', 'music', 'book'],
    },
    {
      'QuestionText': 'whats you favorite animal ?',
      'answers': ['dog', 'cat', 'hours', 'sheep'],
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
          : const Result(),
    );
  }
}
