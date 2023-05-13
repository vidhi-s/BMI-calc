import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import 'roundedicon.dart';
import 'bottombutton.dart';

enum Gender { male, female }

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Gender? selectedgender;
  Color activecolour = Color(0xFF212C67);
  Color deactivecolour = Color(0xFF0B1338);
  int height = 150;
  int width = 65;
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xF2131D50),
        title: Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  child: container(
                    colour: selectedgender == Gender.male
                        ? activecolour
                        : deactivecolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  child: container(
                      colour: selectedgender == Gender.female
                          ? activecolour
                          : deactivecolour,
                      cardchild: iconcontent(
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
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(fontSize: 15.0, color: Colors.white70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text('cm')
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(),
                            thumbColor: Color(0xFF06ACC9),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white70,
                            overlayShape: RoundSliderOverlayShape(),
                            overlayColor: Color(0xB206ACC9),),
                        child: Slider(
                            value: height.toDouble(),
                            min: 100,
                            max: 200,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.toInt();
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: container(
                colour: Color(0xFF0B1338),
                cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(fontSize: 18.0, color: Colors.white70),
                      ),
                      Text(
                        width.toString(),
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          roundedicon(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                width--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          roundedicon(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  width++;
                                });
                              })
                        ],
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: container(
                  colour: Color(0xFF0B1338),
                  cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.white70),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundedicon(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            roundedicon(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ],
                        ),
                      ])),
            )
          ]),
        ),
        bottombutton(text: 'CENTER',onpressed: (){
          Navigator.pushNamed(context, '/final');
        },)
      ]),
    );
  }
}


