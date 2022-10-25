import 'package:flutter/material.dart';
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
  final Function answerQuestions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['QuestionText'] as String),
        const Divider(thickness: 10.0),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(
            selectedButton: () => answerQuestions(answer['score']),
            answer: answer['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}
