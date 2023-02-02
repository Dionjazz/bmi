import 'package:flutter/material.dart';

import '../pages/imput_page.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: () {onTap();},
      child: Container(
        padding:EdgeInsets.only(bottom: 15),
        child:Center(
          child: Text(buttonTitle,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),),
        ),
        color: bottomcolor,
        height: 70.0,
        margin: EdgeInsets.only(top: 12.0),
        width: double.infinity,),
    );
  }
}