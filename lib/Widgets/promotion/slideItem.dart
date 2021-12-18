import 'package:flutter/material.dart';
import 'package:ui/data/slidlist.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          color: Colors.blue,
          child: Text(slideList[index].description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white54, fontSize: 17)),
        )
      ],
    );
  }
}
