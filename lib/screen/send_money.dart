import 'dart:ui';

import 'package:flutter/material.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Send Money"),
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Send to",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Enter Mobile Number",
                            suffixIcon: IconButton(
                              icon: Icon(Icons.person_add_alt_1_rounded),
                              onPressed: () {},
                            ),
                            border: OutlineInputBorder())),
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.orange, width: 2)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Set Amount",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            suffixText: "ETB",
                            hintText: "Enter Amount",
                            border: OutlineInputBorder())),
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.orange, width: 2)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
