import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 0),
      child: Row(
        children: [
          Text("Dont have an account?"),
          SizedBox(
            width: 5,
          ),
          TextButton(onPressed: () {}, child: Text("Create New Account"))
        ],
      ),
    );
  }
}
