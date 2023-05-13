import 'package:flutter/material.dart';
class roundedicon extends StatelessWidget {
   roundedicon({
  required  this.icon,required this.onpressed
  });
  IconData icon;
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onpressed,
      shape: CircleBorder(),
      fillColor: Colors.white70,
      constraints: BoxConstraints.tightFor(
          width: 50.0, height: 50.0),
      child: Icon(icon),

    );
  }
}