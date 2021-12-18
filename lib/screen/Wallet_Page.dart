import 'package:flutter/material.dart';
import 'package:ui/Widgets/wallet/Services.dart';
import 'package:ui/Widgets/wallet/header.dart';
import 'package:ui/Widgets/wallet/viewBalance.dart';
import 'package:ui/data/services.dart';
import 'package:ui/screen/my_account.dart';
import 'package:ui/screen/promotion.dart';
import 'package:ui/screen/send_money.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                Header(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Good Morning EthioTelecom",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ViewBalance(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.database,
                      color: Colors.blue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "DataBase Detail",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                      size: 15,
                    ),
                  ],
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Services()
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
