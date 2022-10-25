import 'package:flutter/material.dart';
import 'package:flutter_create/screens/main_screen.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.result});
  final int result;
  String get resultText {
    String message;

    if (result <= 12) {
      message = 'thats good';
    } else if (result <= 16) {
      message = 'you are awesome!!!';
    } else if (result <= 18) {
      message = 'bravo!';
    } else if (result <= 25) {
      message = 'SO good';
    } else {
      message = 'try again';
    }

    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
          Widget>[
        Text(
          resultText,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Text(
          'Score : $result',
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        const Divider(
          thickness: 2.0,
          color: Colors.red,
          indent: 30.0,
          endIndent: 30.0,
          height: 50.0,
        ),
        OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red.shade300),
              elevation: MaterialStateProperty.all(13.0)),
          onPressed: () {
            _showToast(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
          child: const Text(
            'RESTART',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ]),
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('HELLO AGAIN!'),
      action:
          SnackBarAction(label: '*', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
