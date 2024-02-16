import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Choose Your Hobbies"),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> _hobbies = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          CheckboxListTile(
            value: _hobbies.contains("Football"),
            title: Text("Football"),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  if (value) {
                    _hobbies.add("Football");
                  } else {
                    _hobbies.remove("Football");
                  }
                }
              });
            },
          ),
          CheckboxListTile(
            value: _hobbies.contains("Kindacode.com"),
            title: Text("Kindacode.com"),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  if (value) {
                    _hobbies.add("Kindacode.com");
                  } else {
                    _hobbies.remove("Kindacode.com");
                  }
                }
              });
            },
          ),
          CheckboxListTile(
            value: _hobbies.contains("Baseball"),
            title: Text("Baseball"),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  if (value) {
                    _hobbies.add("Baseball");
                  } else {
                    _hobbies.remove("Baseball");
                  }
                }
              });
            },
          ),
          CheckboxListTile(
            value: _hobbies.contains("Video Games"),
            title: Text("Video Games"),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  if (value) {
                    _hobbies.add("Video Games");
                  } else {
                    _hobbies.remove("Video Games");
                  }
                }
              });
            },
          ),
          CheckboxListTile(
            value: _hobbies.contains("Reading Books"),
            title: Text("Reading Books"),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  if (value) {
                    _hobbies.add("Reading Books");
                  } else {
                    _hobbies.remove("Reading Books");
                  }
                }
              });
            },
          ),
          CheckboxListTile(
            value: _hobbies.contains("Surfing The Internet"),
            title: Text("Surfing The Internet"),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  if (value) {
                    _hobbies.add("Surfing The Internet");
                  } else {
                    _hobbies.remove("Surfing The Internet");
                  }
                }
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(_hobbies.toString())));
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
