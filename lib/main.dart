import 'package:flutter/material.dart';

import 'package:Quiz/answer.dart';
import 'package:Quiz/question.dart';

void main(List<String> args) {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<Map> _questions = [
    {
      'question': 'Question 1',
      'answers': ['Ans1', 'Ans2', 'Ans3', 'Ans4']
    },
    {
      'question': 'Question 2',
      'answers': ['Ans1', 'Ans2', 'Ans3', 'Ans4']
    },
    {
      'question': 'Question 3',
      'answers': ['Ans1', 'Ans2', 'Ans3', 'Ans4']
    }
  ];

  int _questionIndex = 0;

  final int _totalQuestions = 3;

  void _onPressed() {
    if (_questionIndex < _totalQuestions) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Quiz",
            style: TextStyle(
              fontSize: 28,
              color: Colors.brown[900],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < _totalQuestions
            ? Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(100, 100, 100, 50),
                    child: Question(_questions[_questionIndex]['question']),
                  ),
                  Column(
                    children: <Widget>[
                      Answer(
                          _questions[_questionIndex]['answers'][0], _onPressed),
                      Answer(
                          _questions[_questionIndex]['answers'][1], _onPressed),
                      Answer(
                          _questions[_questionIndex]['answers'][2], _onPressed),
                      Answer(
                          _questions[_questionIndex]['answers'][3], _onPressed),
                    ],
                  )
                ],
              )
            : Center(
                child: Text(
                  'You are Done',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
