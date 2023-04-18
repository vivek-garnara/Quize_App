import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Colors.blue.withOpacity(0.8),
        textColor: Colors.white,
      ),
    );
  }
}
