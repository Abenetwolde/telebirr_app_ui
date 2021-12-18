import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/data/services.dart';

import '../../screen/send_money.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20)),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 5 / 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 8,
                ),
                itemCount: services.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    //  height: 30,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      services[index].image,
                                    ))),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            services[index].service_name,
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    FontAwesomeIcons.qrcode,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Scan QR",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SendMoney()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/ministatment.jpg",
                    height: 35,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mini Statement",
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ]),
              ),
            ),
          ),
        ]));
  }
}
