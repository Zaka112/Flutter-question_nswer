import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText); //constructor
  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 25, right: 20.0),
          child: Text(
            questionText,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: double.infinity,
          //height: ,
          margin: EdgeInsets.only(left: 25, right: 20.0, top: 20, bottom: 15),
          child: Text(
            questionText,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
