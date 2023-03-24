import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectQuestionHandler;
  final String answerText;
  const Answer(this.selectQuestionHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          // color: Colors.blue[900 ],
          // textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectQuestionHandler),
    );
  }
}
