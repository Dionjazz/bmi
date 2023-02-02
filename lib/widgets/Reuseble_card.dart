import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {

  ReusebleCard({required this.colour,required this.Cardchild});
  final Color colour;
  final Widget Cardchild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Cardchild,
        margin: EdgeInsets.all(15.0),

        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)
        ));
  }
}