import 'package:project/Utils/questions.dart';

class quiz
{
  List<Questions> _questions;
  int _currentQuestionIndex;
  int _score = 0;

  quiz(this._questions)
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