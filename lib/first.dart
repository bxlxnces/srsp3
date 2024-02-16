import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Election 2020'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showMyAlertDialog(context);
            },
            child: const Text('Open Election Dialog'),
          ),
        ),
      ),
    );
  }

  void showMyAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Election 2020"),
          content: const Text("Will you vote for Trump?"),
          actions: [
            ElevatedButton(
              child: const Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop("Yes, Of course!");
              },
            ),
            ElevatedButton(
              child: const Text("No"),
              onPressed: () {
                Navigator.of(context).pop("No, I will vote for Biden");
              },
            ),
          ],
        );
      },
    );
  }
}
