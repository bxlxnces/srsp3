import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the app body.',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Меню-Big Mac'),
          backgroundColor: Colors.green[600],
        ),
        body: App(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green[600]),
                  accountName: Text('McDonalds Employee'),
                  accountEmail: Text("hone@dartflutter.com"),
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: new Text("About Me"),
                leading: Icon(Icons.account_box),
                onTap: () {},
              ),
              ListTile(
                title: new Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
