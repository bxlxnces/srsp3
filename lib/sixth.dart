import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gender Selection',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select your gender'),
        ),
        body: GenderSelectionWidget(),
      ),
    );
  }
}

class GenderSelectionWidget extends StatefulWidget {
  @override
  _GenderSelectionWidgetState createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  String _gender = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Please let us know your gender:'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio<String>(
                value: 'Male',
                groupValue: _gender,
                onChanged: (String? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              Text('Male'),
              Radio<String>(
                value: 'Female',
                groupValue: _gender,
                onChanged: (String? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              Text('Female'),
              Radio<String>(
                value: 'Other',
                groupValue: _gender,
                onChanged: (String? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              Text('Other'),
            ],
          ),
          ElevatedButton(
            onPressed: _gender.isNotEmpty
                ? () {
                    print('Hello, $_gender!');
                  }
                : null,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
