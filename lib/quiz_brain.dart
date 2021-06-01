import 'questions.dart';
class QuizBrain {
  int _questionNumber=0;
  List<Questions> _questionBank = [
    Questions(q: 'question 1', a: true),
    Questions(q: 'question 2', a: false),
    Questions(q: 'question 3', a: true),
    Questions(q: 'question 4', a: false),
    Questions(q: 'question 5', a: true),
    Questions(q: 'question 6', a: false),
    Questions(q: 'question 7', a: true),
    Questions(q: 'question 8', a: false),
    Questions(q: 'question 9', a: true),
  ];
  void nextQuestion(){
    if(_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionsText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionsAnswers;
  }

  bool isFinished(){
    if(_questionNumber>=_questionBank.length-1){
      print(_questionNumber);

      print('hello');
      return true;
    }
    else{
      print(_questionNumber);
      return false;
    }
  }
void reset(){
    _questionNumber=0;
}
}


