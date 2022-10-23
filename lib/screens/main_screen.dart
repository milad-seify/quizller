import 'package:flutter/material.dart';
import 'package:flutter_create/question.dart';
import 'package:flutter_create/answer_button.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<Map> questions = const [
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

  int _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('text')),
      body: _questionIndex < questions.length
          ? Column(
              children: <Widget>[
                Question(questions[_questionIndex]['QuestionText'] as String),
                const Divider(thickness: 10.0),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map(
                      (answer) => AnswerButton(
                        selectedButton: _answerQuestions,
                        answer: answer,
                      ),
                    )
                    .toList(),
              ],
            )
          : const Center(
              child: Text('DONE'),
            ),
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
