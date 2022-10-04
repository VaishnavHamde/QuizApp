import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(32),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(40),
        color: Colors.red,
      ),
    );
  }
}
