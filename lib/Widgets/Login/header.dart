import 'package:flutter/material.dart';

class LoginHeader extends StatefulWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  _LoginHeaderState createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  String dropdownValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.12,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ethiotelecom2.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.2,
              //  height: 50,
              //padding: EdgeInsets.all(20),
              child: DropdownButton<String>(
                elevation: 0,
                isExpanded: true,
                iconSize: 25,
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.orange,
                ),
                //elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),

                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['አማረኛ', 'English', 'ትግረኛ', 'Oromo', 'somali']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                  );
                }).toList(),
              ))
        ]));
  }
}
