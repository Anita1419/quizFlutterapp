import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuestion;
  const Result(this.resultScore, this.resetQuestion, {Key? key})
      : super(key: key);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore == 15) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 25) {
      resultText = "You are Smart and Cleaver";
    } else if (resultScore >= 25) {
      resultText = "You are Intelligent and Great Personality";
    } else {
      resultText = "You are So bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetQuestion, child: const Text("Restart Quiz!"))
      ],
    );
  }
}
