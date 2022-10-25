import 'package:flutter/material.dart';
import 'package:flutter_create/screens/main_screen.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("DONE"),
            TextButton(
              onPressed: () {
                _showToast(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: const Text('RESTART'),
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
