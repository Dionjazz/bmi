import 'package:flutter/material.dart';



class IconButt extends StatelessWidget {
  IconButt({required this.icon,required this.onPressed});


  final IconData icon;
  final Function onPressed;



  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: () {onPressed();},
      elevation: 2.0,
      constraints: BoxConstraints.tightFor(width: 56,height: 56),
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Colors.white10,
    );
  }
}
