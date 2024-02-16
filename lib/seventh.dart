import 'package:flutter/material.dart';

class LinearProgressIndicatorApp extends StatefulWidget {
  @override
  LinearProgressIndicatorAppState createState() =>
      LinearProgressIndicatorAppState();
}

class LinearProgressIndicatorAppState
    extends State<LinearProgressIndicatorApp> {
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Linear Progress Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _loading
                ? Column(
                    children: [
                      LinearProgressIndicator(),
                      SizedBox(height: 20),
                      Text(
                        "Downloading...",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                : Text(
                    "Press button to start downloading",
                    style: TextStyle(fontSize: 20),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
          });
        },
        tooltip: "Download",
        child: Icon(Icons.cloud_download),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Linear Progress Indicator App',
    home: LinearProgressIndicatorApp(),
  ));
}
