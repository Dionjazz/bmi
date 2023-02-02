import 'package:flutter/material.dart';

class IconMars extends StatelessWidget {

  IconMars({required this.icon, required this.label});

  final IconData icon;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(icon,size: 70,),
        SizedBox(height: 15,),
        Text(label,style: TextStyle(
          fontSize: 20,
          color: Colors.white70,
        ),)
      ],);
  }
}
