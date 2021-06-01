import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


QuizBrain quizBrain = QuizBrain();
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  List<Widget> myIcons=[];
  void checkAnswer(bool userAnswer){
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
            context: context,
            title: "Finished",
            desc: "Play again.").show();
        quizBrain.reset();
        myIcons =[];
      }

    // setState(() {
   else {
        if (correctAnswer == userAnswer) {
          myIcons.add(Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Icon(Icons.check, color: Colors.green,),
          ));
        }
        else {
          myIcons.add(Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Icon(Icons.close, color: Colors.red,),
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                          quizBrain.getQuestionText(),
                      style: TextStyle(fontSize: 30)),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: TextButton(
                onPressed: () {
                 checkAnswer(true);
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'True',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(
                onPressed: () {
                 checkAnswer(false);
                 print(quizBrain.isFinished());
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'False',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            Row(children: myIcons
            ),
          ],
        ),
      ),
    );
  }
}
