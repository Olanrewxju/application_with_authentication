// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_assessment1/components/bottombutton.dart';

void main() {
  runApp(const Settings());
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Update Email'),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Update Username'),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          BottomButton(buttonTitle: 'LOGOUT')
        ],
      ),
    );
  }
}
