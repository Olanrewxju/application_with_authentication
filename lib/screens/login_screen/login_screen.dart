// ignore_for_file: unused_local_variable, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_assessment1/constants.dart';
import 'package:flutter_application_assessment1/screens/login_screen/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('LOGIN'),
      ),
      body: Center(child: Body()),
    );
  }
}
