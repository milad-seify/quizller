import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.selectedButton, required this.answer});

  final VoidCallback selectedButton;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red.shade300,
          elevation: 10.0,
        ),
        onPressed: selectedButton,
        child: Text(
          answer,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
