import "package:flutter/material.dart";

class Answers extends StatelessWidget {
  final Function selectionHandler;
  final String answerText;

  const Answers(this.selectionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: selectionHandler,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
      ),
      width: double.infinity,
    );
  }
}
