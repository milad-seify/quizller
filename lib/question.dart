import 'package:flutter/material.dart';
import 'constants.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {super.key});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.deepOrange.shade400,
        border: kQuestionBorder,
      ),
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
