import 'package:flutter/material.dart';

class ViewBalance extends StatelessWidget {
  const ViewBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(color: Colors.grey.shade300),
        child: Row(
          children: [
            SizedBox(
              width: 120,
            ),
            Expanded(
              child: Text(
                "View Balance",
                style: TextStyle(color: Colors.blue.shade600, fontSize: 17),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye_sharp),
            )
          ],
        ),
      ),
    );
  }
}
