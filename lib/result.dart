import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int totalScore;
  String get resultPhrase {
    String resultText;
    if (totalScore < 6) {
      resultText =
          'Oops..! Your score is $totalScore/10\nbetter luck for next time...';
    } else if (totalScore < 9) {
      resultText = 'Nice try, Your score is $totalScore/10';
    } else {
      resultText = 'Excellent!! Your score is $totalScore/10';
    }
    return resultText;
  }

  Result(this.resetQuiz, this.totalScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart the Quiz !!',
              style:
                  TextStyle(fontSize: 18, decoration: TextDecoration.underline),
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
