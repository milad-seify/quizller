import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.selectedButton, required this.answer});

  final VoidCallback selectedButton;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          elevation: 7.0,
        ),
        onPressed: selectedButton,
        child: Text(answer),
      ),
    );
  }
}
