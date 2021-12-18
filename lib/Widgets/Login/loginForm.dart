import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>(); //key for form
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 45, left: 35, right: 35, bottom: 2),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.095,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile Number",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: "+251",
                          labelStyle: TextStyle(color: Colors.black),
                          prefixText: "+251",
                          prefixStyle: TextStyle(color: Colors.black),
                          isDense: false,
                          hintText: "Enter Mobile Number",
                          hintStyle: TextStyle(fontSize: 13),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          alignLabelWithHint: true,
                          border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 3,
            left: 35,
            right: 35,
          ),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.095,
            //color: Colors.green,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PIN",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          isDense: false,

                          //prefixStyle: TextStyle(color: Colors.black),
                          // prefix: Text("ggg"),
                          suffixIcon: Icon(Icons.visibility_off),
                          hintText: "Enter PIN",
                          hintStyle: TextStyle(fontSize: 15),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          alignLabelWithHint: true,
                          border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
