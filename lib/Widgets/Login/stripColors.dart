import 'package:flutter/material.dart';

class StripColor extends StatelessWidget {
  const StripColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.18,
      child: Stack(
        fit: StackFit.loose,
        overflow: Overflow.visible,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Copy Right 1894-2021 @Ethiotelcon.\n All rights reserved",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          Positioned(
            bottom: -30,
            child: Transform.rotate(
              angle: 2.5,
              child: Container(
                height: 20,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Positioned(
            right: 50,
            bottom: -80,
            child: Transform.rotate(
              alignment: Alignment.topRight,
              angle: 2.5,
              child: Container(
                height: 20,
                width: 800,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 100,
            child: Transform.rotate(
              angle: 2.5,
              child: Container(
                height: 20,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: Transform.rotate(
              alignment: Alignment.topRight,
              angle: 2.5,
              child: Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
