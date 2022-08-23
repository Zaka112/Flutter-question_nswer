import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText); //constructor
  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
