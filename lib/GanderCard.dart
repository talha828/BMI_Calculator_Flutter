import 'package:flutter/material.dart';
import 'constant.dart';

class GanderCard extends StatelessWidget {
  GanderCard({this.text,this.icon});
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$text",style: gandercard),
        SizedBox(height: 10.0 ),
        Icon(
          icon,
          size: 60,
          color: Colors.white,
        ),
      ],
    );
  }
}