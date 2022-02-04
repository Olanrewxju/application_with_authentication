// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_assessment1/components/already_have_an_account_check.dart';
import 'package:flutter_application_assessment1/components/rounded_button.dart';
import 'package:flutter_application_assessment1/components/rounded_inputfield.dart';
import 'package:flutter_application_assessment1/components/rounded_password_field.dart';
import 'package:flutter_application_assessment1/constants.dart';
import 'package:flutter_application_assessment1/components/or_divider.dart';
import 'package:flutter_application_assessment1/screens/phoneNumLogin_screen/components/sign_in_with_phone_number_or_email.dart';
import 'package:flutter_application_assessment1/screens/phoneNumLogin_screen/phonenumlogin_screen.dart';
import 'package:flutter_application_assessment1/screens/register_screen/register_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedInputField(
            icon: Icons.person,
            hintText: 'Your Email',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
            hintText: 'Enter Password',
          ),
          Roundedbutton(
            text: "LOGIN",
            press: () {},
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterScreen(); //LEAD THIS TO THE RIGHT PLACE FOR FORGOT PASSWORD
                  },
                ),
              );
            },
            child: Text(
              'Forgot Password?',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          AlreadyHaveAnAccountCheck(
            login:
                true, //       SET TO TRUE JUST SO I CAN CONTINUE WITHOUT THE NULL ERROR
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
          ),
          OrDivider(),
          SignInWithPhoneOrEmail(
              login: true,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PhoneNumLoginScreen();
                    },
                  ),
                );
              }),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return PhoneNumLoginScreen(); //LEAD THIS TO THE RIGHT PLACE FOR sign in with phone number
          //         },
          //       ),
          //     );
          //   },
          //   child: Text(
          //     'Sign In with phone number?',
          //     style:
          //         TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          //   ),
          // ),
        ],
      ),
    );
  }
}
