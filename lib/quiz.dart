import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'question.dart';
import 'answer_button.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestions,
      required this.questionIndex});
  final int questionIndex;
  final List<Map<String, dynamic>> questions;
  final VoidCallback answerQuestions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['QuestionText'] as String),
        const Divider(thickness: 10.0),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map(
              (answer) => AnswerButton(
                selectedButton: answerQuestions,
                answer: answer,
              ),
            )
            .toList(),
      ],
    );
  }
}