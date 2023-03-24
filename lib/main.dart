import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';
import 'package:quizz_app/result.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  final _questions = const [
    {
      "questionText": "What\'s your favourite color ?",
      "answers": [
        {"text":"Black","score" : 5},
        {"text":"white","score":10},
        {"text":"Red","score":5 }
      ]
    },
    {
      "questionText": "What\'s your favourite animal ?",
      "answers": [
        {"text":"Zebra","score":5},
        {"text":"Parrot","score":10},
        {"text":"Cat" ,"score":5},
        {"text":"dog","score":5}
      ]
    },
    {
      "questionText": "What\'s your favourite flavour ?",
      "answers": [
        {"text":"Spicy","score":5},
        {"text":"Sweet","score":10}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore =0;

  _answerQuestions(int score) {

    _totalScore = _totalScore + score;


    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more questions");
    }
  }

  void resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questionIndex: _questionIndex,
                    questions: _questions,
                    selectQuestionHnadler: _answerQuestions,
                  )
                : Result(_totalScore,resetQuiz)));
  }
}
