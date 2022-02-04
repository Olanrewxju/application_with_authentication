// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_assessment1/components/rounded_button.dart';
import 'package:flutter_application_assessment1/constants.dart';
import 'package:flutter_application_assessment1/screens/login_screen/login_screen.dart';
import 'package:flutter_application_assessment1/screens/register_screen/register_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Roundedbutton(
            text: 'LOGIN',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          Roundedbutton(
            text: 'REGISTER',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
