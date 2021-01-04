import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        _question,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey[850],
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
