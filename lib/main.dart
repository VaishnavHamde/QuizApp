import "package:flutter/material.dart";
import "./Quiz.dart";
import "./Result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"text": "green", "score": 4},
        {"text": "red", "score": 7},
        {"text": "black", "score": 10},
        {"text": "white", "score": 1}
      ]
    },
    {
      "questionText": "What is your hobby?",
      "answers": [
        {"text": "TV series", "score": 10},
        {"text": "movies", "score": 7},
        {"text": "listening songs", "score": 4},
        {"text": "painting", "score": 1}
      ]
    },
    {
      "questionText": "What can you do?",
      "answers": [
        {"text": "code", "score": 1},
        {"text": "program", "score": 3},
        {"text": "paint", "score": 10},
        {"text": "climb", "score": 7}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first flutter app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _restart),
      ),
    );
  }
}
