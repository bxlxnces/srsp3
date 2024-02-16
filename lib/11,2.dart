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
          title: Text('Table Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(120.0),
                  border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child:
                              Text('Website', style: TextStyle(fontSize: 20.0)),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('Tutorial',
                              style: TextStyle(fontSize: 20.0)),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child:
                              Text('Review', style: TextStyle(fontSize: 20.0)),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text('Javatpoint'),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('Flutter'),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('5*'),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text('Javatpoint'),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('MySQL'),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('5*'),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text('Javatpoint'),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('ReactJS'),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('5*'),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
