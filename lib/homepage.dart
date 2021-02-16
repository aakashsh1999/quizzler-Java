import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/questionbank.dart';
import 'package:quizzler/questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Icon> myIcons = [];

  void boolChecked(bool useranswer) {
    bool answer = questionBank.getQuestionAnswer();
    setState(() {
      if (questionBank.isFinished() == true) {
        Alert(
                context: context,
                title: 'Finished',
                desc: 'You have reached to the end of quiz')
            .show();
        questionBank.reset();
        myIcons = [];
      } else {
        if (useranswer == answer) {
          myIcons.add(Icon(Icons.check, color: Colors.green));
        } else {
          myIcons.add(Icon(Icons.close, color: Colors.red));
        }
        questionBank.nextQuestion();
      }
    });
  }

  QuestionBank questionBank = QuestionBank();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(questionBank.getQuestionText(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    onPressed: () {
                      boolChecked(true);
                    },
                    child: Text('true',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  onPressed: () {
                    boolChecked(false);
                  },
                  child: Text('false',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  color: Colors.red,
                ),
              )),
              Row(children: myIcons)
            ],
          ),
        ),
      ),
    );
  }
}
