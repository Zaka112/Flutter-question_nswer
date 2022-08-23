import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _answerIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      // //_answerIndex = _answerIndex + 1;
      // if (_questionIndex == 3) {
      //   _questionIndex = 0;
      // }
      // if (_questionIndex < questions.length) {
      //   _questionIndex = 0;
      // }
      // if (_answerIndex == 3) {
      //   _answerIndex = 0;
      // }
    });
    //questionIndex = questionIndex + 1;
    print(_questionIndex);
    print(_answerIndex);

    //print('Answer chosen is ');
  }

  @override
  Widget build(BuildContext context) {
    //var answers = [];
    const questions = [
      {
        'questionText': 'What is your favorite color 1',
        'answers': ['Red', 'Green', 'Blue']
      },
      {
        'questionText': 'What is your favorite animal',
        'answers': ['Dog', 'Cat', 'Horse']
      },
      {
        'questionText': 'What is your favorite City 1',
        'answers': ['KBH', 'Roskilde', 'Arhus']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  // spread operator ...
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                        return Answer(_answerQuestion, answer);
                      })
                      .toList()
                      .reversed

                  // ElevatedButton(
                  //   child: Answer(
                  //     answers[_answerIndex],
                  //   ),
                  //   onPressed: _answerQuestion,
                  //   // onPressed: () => print('Answer 2 is chosen'),
                  // ),
                  // ElevatedButton(
                  //   child: Answer(
                  //     answers[_answerIndex],
                  //   ),
                  //   onPressed: _answerQuestion,
                  //   // onPressed: () => print('Answer 2 is chosen'),
                  // ),
                ],
              )
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
