import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget
{
  final bool answer;
  final VoidCallback _onTap;
  AnswerBtn(this.answer, this._onTap);
  @override
  Widget build(BuildContext context)
  {
     return new Expanded(
             child: new Material(
          color: answer==true ? Colors.greenAccent: Colors.redAccent,
          child: new InkWell(
            onTap: ()=>_onTap(),
            child:new Center(
              child: new Container(
                padding: new EdgeInsets.all(20),
                decoration: new BoxDecoration(border: new Border.all(color:Colors.white,
                width: 4)),
                child: new Text(answer==true ? "True":"False", 
                style: new TextStyle(color:Colors.white, fontSize: 40, 
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
              ),
            )
          ),
        )
           );
  }
}
