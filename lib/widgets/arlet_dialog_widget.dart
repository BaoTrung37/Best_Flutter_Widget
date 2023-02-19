import 'package:flutter/material.dart';

class ArletDialogWidget extends StatefulWidget {
  const ArletDialogWidget({super.key});

  @override
  State<ArletDialogWidget> createState() => _ArletDialogWidgetState();
}

class _ArletDialogWidgetState extends State<ArletDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Alert Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Alert Dialog'),
                content: const Text('This is an alert dialog.'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
