import 'package:flutter/material.dart';
import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';

enum Gender { male, female }
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Gender? selectedgender;
  Color activecolour=Color(0xFF212C67);
  Color deactivecolour=Color(0xFF0B1338);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){setState(() {
                    selectedgender = Gender.male;
                  });},
                  child: container(
                    colour: selectedgender==Gender.male? activecolour:deactivecolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){setState(() {
                    selectedgender = Gender.female;
                  });},
                  child: container(colour:selectedgender==Gender.female? activecolour:deactivecolour,cardchild: iconcontent(
                    icon: FontAwesomeIcons.venus,
                    lable: 'FEMALE',
                  )),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: container(
                  colour: Color(0xFF0B1338),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: container(colour: Color(0xFF0B1338)),
            ),
            Expanded(
              child: container(colour: Color(0xFF0B1338)),
            )
          ]),
        ),
        Container(
          height: 50.0,
          width: 500.0,
          color: Colors.green,
        )
      ]),
    );
  }
}
