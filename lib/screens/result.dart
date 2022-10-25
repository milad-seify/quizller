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
            const Text("DONE!"),
            const Divider(
              thickness: 2.0,
              color: Colors.red,
              indent: 30.0,
              endIndent: 30.0,
              height: 50.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  elevation: 10.0, backgroundColor: Colors.red.shade300),
              onPressed: () {
                _showToast(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
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
