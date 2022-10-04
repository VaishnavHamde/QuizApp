import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int score;
  final Function restart;

  const Result(this.score, this.restart);

  String get resultPhrase {
    if (score <= 7)
      return "You are awesome and innocent";
    else if (score <= 14)
      return "You are pretty likeable!";
    else
      return "You are so bad!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 50, bottom: 50),
          ),
          TextButton(
            onPressed: restart,
            child: Text("Restart Quiz!"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.black),
              overlayColor: MaterialStateProperty.all(Colors.white),
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            ),
          )
        ],
      ),
    );
  }
}
