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
  static const _questions = const [
    {
      'question': 'Question 1',
      'answers': [
        {
          'text': 'Ans1',
          'score': 10,
        },
        {
          'text': 'Ans2',
          'score': 20,
        },
        {
          'text': 'Ans3',
          'score': 30,
        },
        {
          'text': 'Ans4',
          'score': 40,
        }
      ]
    },
    {
      'question': 'Question 2',
      'answers': [
        {
          'text': 'Ans1',
          'score': 10,
        },
        {
          'text': 'Ans2',
          'score': 20,
        },
        {
          'text': 'Ans3',
          'score': 30,
        },
        {
          'text': 'Ans4',
          'score': 40,
        }
      ]
    },
    {
      'question': 'Question 3',
      'answers': [
        {
          'text': 'Ans1',
          'score': 10,
        },
        {
          'text': 'Ans2',
          'score': 20,
        },
        {
          'text': 'Ans3',
          'score': 30,
        },
        {
          'text': 'Ans4',
          'score': 40,
        }
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  final int _totalQuestions = 3;

  void _onPressed(int score) {
    _totalScore += score;
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
                      ...(_questions[_questionIndex]['answers']
                              as List<Map<String, Object>>)
                          .map((answer) {
                        return Answer(
                            answer['text'], () => _onPressed(answer['score']));
                      }).toList()
                    ],
                  )
                ],
              )
            : Container(
                padding: EdgeInsets.all(100),
                child: Column(
                  children: <Widget>[
                    Text(
                      'You are Done !!! ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'Your score is ' + _totalScore.toString(),
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
