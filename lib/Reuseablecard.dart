import 'package:flutter/material.dart';

class Reuseablecard extends StatelessWidget {
  Reuseablecard({this.color,this.cardchild,this.onPress});
  final color;
  final cardchild;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:color,
        ),
        child: cardchild,
      ),
    );
  }
}