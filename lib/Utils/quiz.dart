import 'package:project/Utils/questions.dart';

class Quiz
{
  List<Questions> _questions;
  int _currentQuestionIndex =-1;
  int _score = 0;

  Quiz(this._questions)
  {
    _questions.shuffle();
  }

  int get score=> _score;
  List<Questions> get questions => _questions;
  int get questionNumber => _currentQuestionIndex+1;
  int get length => _questions.length;

  Questions get nextQuestion
  {
    _currentQuestionIndex++;
    if(_currentQuestionIndex>= length)
    {
    }
    else
    {
      return _questions[_currentQuestionIndex];
    }
  }
  void answer(bool isCorrect)
  {
    if(isCorrect)
    {
      _score++;
    }
  }
}