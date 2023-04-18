import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final int questionIndex;
  final Function progressBar;
  final Function progressBarText;
  Progress(this.questionIndex, this.progressBar, this.progressBarText);
  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: progressBar(1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))),
          child: progressBarText(1),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(2),
          child: progressBarText(2),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(3),
          child: progressBarText(3),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(4),
          child: progressBarText(4),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(5),
          child: progressBarText(5),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(6),
          child: progressBarText(6),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(7),
          child: progressBarText(7),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(8),
          child: progressBarText(8),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          color: progressBar(9),
          child: progressBarText(9),
          alignment: Alignment.center,
        ),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: progressBar(10),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: progressBarText(10),
          alignment: Alignment.center,
        ),
      ],
    ));
  }
}
