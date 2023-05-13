import 'package:flutter/material.dart';
import 'container.dart';
import 'bottombutton.dart';
class result extends StatelessWidget {
  const result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xF2131D50),
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
   
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR BMI',style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: container(colour: Color(0xFF0B1338)
              ,cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text('normal',style: TextStyle(fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),),


                  Text('87',style: TextStyle(fontSize: 100.0,
                  fontWeight: FontWeight.bold),),
                  Text('Geez,you are fat',style: TextStyle(
                    fontSize: 25.0,
                    
                  ),)
                ],
              ),
            ),
          ),
          bottombutton(text:' RE-CALCULATE YOUR BMI', onpressed: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
