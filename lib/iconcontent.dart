import 'package:flutter/material.dart';
class iconcontent extends StatelessWidget {
  IconData icon;
  String lable;
  iconcontent({
    required this.icon,required this.lable
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 18.0,
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          lable,
          style: TextStyle(fontSize: 18.0),
        )
      ],
    );
  }
}