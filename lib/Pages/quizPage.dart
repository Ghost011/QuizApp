
import 'package:flutter/material.dart';

import '../Utils/questions.dart';
import '../Utils/quiz.dart';
import 'score_page.dart';
import '../UI/answerBtn.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  Questions currentQuestion;
  Quiz q = new Quiz([
    new Questions("Elon Musk is human", false),
    new Questions("Pizza is healthy", false),
    new Questions("Flutter is awesome", true)
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldBeVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = q.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = q.questionNumber;
  }

  void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    q.answer(isCorrect);
    this.setState(() {
      overlayShouldBeVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column( // This is our main page
          children: <Widget>[
            new AnswerBtn(true, () => handleAnswer(true)), //true button
            new QuestionText(questionText, questionNumber),
            new AnswerBtn(false, () => handleAnswer(false)), // false button
          ],
        ),
        overlayShouldBeVisible == true ? new CorretWrongOverlay(
          isCorrect,
          (){
            if(q.length == questionNumber)
            {
              Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
                 builder : (BuildContext context)=>new ScorePage(q.score, q.length))
              , (Route route)=>route==null);
              return;
              }

            currentQuestion = q.nextQuestion;
            this.setState((){
              overlayShouldBeVisible = false;
              questionText = currentQuestion.question;
              questionNumber = q.questionNumber;
            });
          }
        ) : new Container()
      ],
    );
  }
}