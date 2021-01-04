import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressed;
  final String _answer;

  Answer(this._answer, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _onPressed,
      color: Colors.green[800],
      child: Text(
        _answer,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
