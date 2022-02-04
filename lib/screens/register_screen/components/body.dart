// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_assessment1/components/already_have_an_account_check.dart';
import 'package:flutter_application_assessment1/components/rounded_button.dart';
import 'package:flutter_application_assessment1/components/rounded_inputfield.dart';
import 'package:flutter_application_assessment1/screens/login_screen/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedInputField(
            hintText: 'Enter your Email',
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: 'Enter your Phone Number',
            onChanged: (value) {},
          ),
          Roundedbutton(
            text: "VERIFY",
            press: () {},
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
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
        ],
      ),
    );
  }
}
