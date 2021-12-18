import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui/data/my_account_data.dart';
import 'package:ui/data/services.dart';
import 'package:ui/screen/send_money.dart';

class MY_Account extends StatefulWidget {
  const MY_Account({Key? key}) : super(key: key);

  @override
  _MY_AccountState createState() => _MY_AccountState();
}

class _MY_AccountState extends State<MY_Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
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
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "EthioTelecom Telebirr",
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "+251947081180",
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: my_account.length,
                        itemBuilder: (context, index) {
                          return Column(children: [
                            ListTile(
                              leading: Icon(
                                my_account[index].icon,
                                color: Colors.orange,
                              ),
                              title: Text(
                                my_account[index].text,
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 2,
                            )
                          ]);
                        }),
                  )
                ]),
              ))),
    );
  }
}
