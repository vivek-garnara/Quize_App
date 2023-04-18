import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int questionIndex;
  Question(this.questionText, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(children: [
            Text(
              ('${questionIndex + 1}.').toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Expanded(
              flex: 5,
              child: Text(
                questionText,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
