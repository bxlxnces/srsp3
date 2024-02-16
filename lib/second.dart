import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Исправьте на 3, чтобы совпадало с количеством вкладок
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_train)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
              indicatorColor:
                  Colors.white, // Цвет полоски под выбранной вкладкой
            ),
            backgroundColor: Colors.blue, // Установка цвета фона для TabBar
          ),
          body: TabBarView(
            children: [
              // Содержимое первой вкладки
              Center(child: Text('1')),

              // Содержимое второй вкладки
              Center(
                child: Container(
                  width: 300,
                  height: 200,
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.red,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album, size: 60),
                          title: Text(
                            'Sonu Nigam',
                            style: TextStyle(fontSize: 30.0),
                          ),
                          subtitle: Text(
                            'Best of Sonu Nigam Music.',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Содержимое третьей вкладки
              Center(child: Text('3')),
            ],
          ),
        ),
      ),
    );
  }

  @override
  showMyAlertDialog(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      title: const Text("Election 2020"),
      content: Text("Will you vote for Trump?"),
      actions: [
        ElevatedButton(
            child: Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop("Yes, Of course!");
            }),
        ElevatedButton(
            child: Text("No"),
            onPressed: () {
              Navigator.of(context).pop("No, i will vote for Biden");
            }),
      ],
    );
  }
}
