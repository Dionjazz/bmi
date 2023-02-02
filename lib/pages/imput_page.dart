import 'package:bmi/pages/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../widgets/Icon_button.dart';
import '../widgets/Reuseble_card.dart';
import '../widgets/button_bottom.dart';
import '../widgets/icon_content.dart';
import '../widgets/logic/calculatorbrain.dart';


class ImputPage extends StatefulWidget {


  @override
  State<ImputPage> createState() => _ImputPageState();
}
enum Gender{
  male,
  female,
}

const  Color KInactive= Color(0xFF152030);
const  Color KActive= Color(0xAD343239);
const   Color IcColor = Color(0xFF152030);

const cardcolor = Color(0xFF152030);
const bottomcolor = Color(0xFFEB1555);
int height = 180;
int weight1 = 60;
int age = 15;

class _ImputPageState extends State<ImputPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF072040),
      ),
      home: Scaffold(
        appBar: AppBar(backgroundColor: cardcolor,
          title: const Text('BMI'),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child:
            Row (children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                     IcColor == KActive;

                      print('lefttop');
                    });

                  },
                  child: GestureDetector(
                    onTap:() {
                      setState(() {
                        print('rigth top');
                      });
                    },
                    child: ReusebleCard(
                        colour: cardcolor,Cardchild: IconMars(
                      icon: FontAwesomeIcons.mars,label: 'MALE',)
                    ),
                  ),
                ),),
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child: ReusebleCard(
                    colour: cardcolor,Cardchild: IconMars(
                    icon: FontAwesomeIcons.female,label: 'FEMALE',),
                  ),
                ),),


            ],)),
            Expanded(child:
            ReusebleCard(colour: cardcolor,Cardchild: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('HEIGHT'),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,

                  children: [
                    Text(height.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),),
                    const Text ('cm',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ))
                  ],
                ),
                SliderTheme(data: SliderTheme.of(context).copyWith(
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15,),
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
                  inactiveTickMarkColor: Colors.white10,
                  activeTrackColor: Colors.white,
                  thumbColor: bottomcolor,
                  overlayColor: const Color(0x29EB1555)
                ),
                  child: Slider(value: height.toDouble(),
                  onChanged: (double newValue){
                    setState(() {
                      height=newValue.round();
                    });
                  },
                  min: 120,
                  max: 220,),
                )

              ],
            ))),
            Expanded(child:
            Row(children: [
              Expanded(
                child: ReusebleCard(
                    colour: cardcolor,Cardchild: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('WEIGHT',
                      style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),),
                     Text(weight1.toString(),
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                    ),

                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: IconButt(icon: Icons.remove,
                              onPressed: (){
                              setState(() {
                                weight1--;
                              });
                              },
                            ),
                          ),
                          const SizedBox(width: 10),

                          Expanded(
                            child: IconButt(icon: Icons.add, onPressed: (){
                              setState(() {
                                weight1++;
                                print(weight1);
                              });
                            },),
                          )

                        ],
                      ),
                    )
                  ],
                )
              ),),
              Expanded(
                child: ReusebleCard(
                    colour: cardcolor,Cardchild: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('AGE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),),
                    Text(age.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: IconButt(icon: Icons.remove,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 10),

                          Expanded(
                            child: IconButt(icon: Icons.add, onPressed: (){
                              setState(() {
                                age++;
                              },
                              );
                            },),
                          )

                        ],
                      ),
                    )
                  ],
                )
                ),),
            ],)),


            BottomButton(buttonTitle: 'CALCULATE', onTap:() {
             CalculatorBrain calc = CalculatorBrain(height: height, weight: weight1);

              Navigator.push(context, MaterialPageRoute(builder:(context)=> ResultPage(
                BMIresult: calc.calculationBMI().toStringAsFixed(1),
              Resulttext: calc.getresult(),
              interpritation: calc.interpritation(),

              )));
            },)
          ],
        ),
      ),


    );
  }}


//
