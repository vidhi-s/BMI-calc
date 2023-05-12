import 'package:flutter/material.dart';
class container extends StatelessWidget {
  Color colour;
  Widget? cardchild;

  container({ required this.colour,this.cardchild

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colour,
      ),
    );
  }
}
