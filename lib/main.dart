import 'package:first_app_quiz/progressBar.dart';
import 'package:first_app_quiz/result.dart';
import 'package:flutter/material.dart';
// import 'package:first_app_quiz/answer.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText':
          'Computer software designed specifically for the users to perform a particular task, is called',
      'answers': [
        {'text': 'System software', 'score': 0},
        {'text': 'Utility Program', 'score': 0},
        {'text': 'Application Software', 'score': 1},
        {'text': 'Windows', 'score': 0}
      ],
    },
    {
      'questionText': 'ROM stands for',
      'answers': [
        {'text': 'Read Only Memory', 'score': 1},
        {'text': 'Ready Only Memory', 'score': 0},
        {'text': 'Random Access Memory', 'score': 0},
        {'text': 'None of this', 'score': 0}
      ],
    },
    {
      'questionText': 'Which device gives output on the paper?',
      'answers': [
        {'text': 'Speaker', 'score': 0},
        {'text': 'Monitor', 'score': 0},
        {'text': 'Scanner', 'score': 0},
        {'text': 'Printer', 'score': 1}
      ],
    },
    {
      'questionText': 'RAM stands for',
      'answers': [
        {'text': 'Read Access Memory', 'score': 0},
        {'text': 'Ready Access Memory', 'score': 0},
        {'text': 'Random Access Memory', 'score': 1},
        {'text': 'None of this', 'score': 0},
      ],
    },
    {
      'questionText': 'A Storage space that contains organized files is called',
      'answers': [
        {'text': 'Catalog', 'score': 0},
        {'text': 'Folder', 'score': 0},
        {'text': 'Directory', 'score': 0},
        {'text': 'all of these', 'score': 1},
      ],
    },
    {
      'questionText': 'Application software cannot execute without ...',
      'answers': [
        {'text': 'System software', 'score': 1},
        {'text': 'Utility program', 'score': 0},
        {'text': 'Application software', 'score': 0},
        {'text': 'Drivers', 'score': 0},
      ],
    },
    {
      'questionText':
          'The software which provides an environment to work on a computer is',
      'answers': [
        {'text': 'Database', 'score': 0},
        {'text': 'Microsoft Windows', 'score': 1},
        {'text': 'GUI', 'score': 0},
        {'text': 'Hardware', 'score': 0},
      ],
    },
    {
      'questionText': 'Most common operating system in personal computer is:',
      'answers': [
        {'text': 'MS Windows', 'score': 1},
        {'text': 'Apple', 'score': 0},
        {'text': 'Linux', 'score': 0},
        {'text': 'Android', 'score': 0},
      ],
    },
    {
      'questionText': 'CPU main function is to',
      'answers': [
        {'text': 'Convert information to storage', 'score': 0},
        {'text': 'Convert data into information', 'score': 1},
        {'text': 'Store information', 'score': 0},
        {'text': 'Holds data', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is a primary memory in computer?',
      'answers': [
        {'text': 'Hard disk', 'score': 0},
        {'text': 'RAM', 'score': 1},
        {'text': 'EPROM', 'score': 0},
        {'text': 'ROM', 'score': 0},
      ],
    },
  ];
  int _questionIndex = -1;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _questionIndex += 1;
    _totalScore += score;
    print(_questionIndex);
    setState(() {});
  }

  void _resetQuiz() {
    _questionIndex = 0;
    setState(() {});
  }

  _progressBar(int questionIndex) {
    return (_questionIndex + 1 >= questionIndex
        ? Colors.blue
        : Colors.blue.withOpacity(0.5));
  }

  _progressBarText(int questionIndex) {
    return (_questionIndex + 1 >= questionIndex
        ? Text(
            '$questionIndex',
            style: TextStyle(color: Colors.white),
          )
        : Text(
            '$questionIndex',
            style: TextStyle(color: Colors.black),
          ));
  }

  void _startQuiz() {
    _questionIndex = -1;
    _totalScore = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Quiz'),
            ),
            body: Column(
              children: [
                _questionIndex == -1
                    ? Center( 
                        child: RaisedButton(
                        child: Text('Start the Quiz !!'),
                        onPressed: _resetQuiz,
                        color: Colors.blue,
                        textColor: Colors.white,
                      ))
                    : _questionIndex < _questions.length
                        ? Column(
                            children: [
                              Quiz(_answerQuestion, _questions, _questionIndex),
                              const SizedBox(
                                height: 250,
                              ),
                              Progress(_questionIndex, _progressBar,
                                  _progressBarText)
                            ],
                          )
                        : Result(_startQuiz, _totalScore),
              ],
            )),
      ),
    );
  }
}
