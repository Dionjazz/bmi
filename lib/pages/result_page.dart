
import 'package:flutter/material.dart';

import '../widgets/Reuseble_card.dart';
import '../widgets/button_bottom.dart';
import 'imput_page.dart';

const KtextStyle =  TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold);

const KBMItext =  TextStyle(
    fontSize: 90,
    fontWeight: FontWeight.bold);

const Kbodytext =  TextStyle(
    fontSize: 20);

const kResultStyle = TextStyle(
fontSize: 22,
color: Color(0xFF24D876),
fontWeight: FontWeight.bold);

class ResultPage extends StatelessWidget {


  ResultPage({required this.BMIresult, required this.Resulttext, required this.interpritation});

  final String BMIresult;
  final String Resulttext;
  final String interpritation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Color(0xFF0A0E21),
          title: Text('BMI')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
           'YOUR RESULT',
            style: KtextStyle,
          ),),
        ),
        Expanded(flex: 5,
            child: ReusebleCard(colour: cardcolor, Cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(Resulttext,
                  style: kResultStyle,),
                Text(BMIresult,style: KBMItext),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(interpritation,style: Kbodytext,
                  textAlign: TextAlign.center),
                ),
                BottomButton(onTap:
                    (){Navigator.pop(context);},
                    buttonTitle: 'AGAIN'),
              ],
            )))
      ],
      ),
    );
  }
}


