import 'package:flutter/material.dart';
import 'package:project/Pages/landing_Page.dart';

class ScorePage extends StatelessWidget {
  final int _score ;
  final int _total ;

  ScorePage(this._score, this._total);
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.lightGreen,
      
        child: new Container(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(color: Colors.white54,
              shape: BoxShape.circle),
              padding: EdgeInsets.all(20),
                child: new Icon(
              Icons.thumb_up,
              color: Colors.deepPurpleAccent,
              size: 100,
            )),
            new Text(
              "Your Score is : " + _score.toString()+" / "+ _total.toString(),
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            new IconButton(
              icon: new Icon (Icons.arrow_right)
            , iconSize:  50,
            onPressed: ()=>Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
          builder: (BuildContext context)=>new LandingPage()
        ), (Route route) => route==null))
            
          ],
        )),
      )
    ;
  }
}
