import 'package:flutter/material.dart';
import 'package:ui/Widgets/Login/createAccount.dart';
import 'package:ui/Widgets/Login/header.dart';
import 'package:ui/Widgets/Login/loginButton.dart';
import 'package:ui/Widgets/Login/loginForm.dart';
import 'package:ui/Widgets/Login/stripColors.dart';
import 'package:ui/Widgets/Login/wellcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          LoginHeader(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          WelcomeMessage(),
          LoginForm(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot PIN?",
                      style: TextStyle(
                          color: Colors.blue.shade800,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              LoginButton(),
              CreateAccount(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              StripColor()
            ]),
          ),
        ]));
  }
}
