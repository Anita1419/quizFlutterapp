import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function selectQuestionHnadler;
  final List<Map<String,Object>> questions;
  final int questionIndex;

  Quiz({required this.selectQuestionHnadler,required this.questions,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
        return Answer(() => selectQuestionHnadler(answer['score'] as int), answer["text"] as String);
      }).toList()
    ],);
  }
}
