import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 220),
      child: Container(
        alignment: Alignment.centerLeft,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/telebirr_logo.jpg"),
        )),
      ),
    );
  }
}
