import 'package:flutter/material.dart';

const Text kTextTitle = Text('Answer 1');

final ButtonStyle kRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

const Border kQuestionBorder = Border(
  top: BorderSide(
    color: Color.fromARGB(255, 168, 218, 241),
    width: 3.0,
  ),
  left: BorderSide(
    color: Color.fromARGB(255, 121, 184, 214),
    width: 3.0,
  ),
  right: BorderSide(
    color: Color.fromARGB(255, 24, 97, 131),
    width: 3.0,
  ),
  bottom: BorderSide(
    color: Color.fromARGB(255, 9, 49, 67),
    width: 3.0,
  ),
);
