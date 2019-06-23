import 'package:flutter/material.dart';
import '../UI/answerBtn.dart';
import '../Utils/questions.dart';
import '../Utils/quiz.dart';
import '../UI/question_text.dart';

class quizPage extends StatefulWidget
{
  @override
  State createState()=> new quizPageState(); 
}

class quizPageState extends State<quizPage>
{
  @override
  Widget build(BuildContext context)
  {
    return new Stack(
      children: <Widget>[
        new Column( 
          children: <Widget>[
           new AnswerBtn(true, (){print("You have answered right");}),
          new QuestionText("Pizza is good for health.",1),
          new AnswerBtn(false,  (){print("You have answered wrong");}),
          
          ],
        ),
      ],
    );
  }
}