import 'package:flutter/material.dart';
class bottombutton extends StatelessWidget {
   bottombutton({ required this.text, required this.onpressed

  });
  String text;
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: 500.0,
        color: Color(0xFF06ACC9),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          onPressed:onpressed
        ));
  }
}