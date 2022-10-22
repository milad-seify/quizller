import 'package:flutter/material.dart';
import 'package:flutter_create/question.dart';
import 'package:flutter_create/answer_button.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> question = [
    'thats question one',
    'thats question two',
    'thats question three',
    'thats question four',
    'thats question five',
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
      body: Column(
        children: <Widget>[
          Question(question[_questionIndex]),
          const Divider(thickness: 10.0),
          AnswerButton(selectedButton: _answerQuestions),
          AnswerButton(selectedButton: _answerQuestions),
          AnswerButton(selectedButton: _answerQuestions),
        ],
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
