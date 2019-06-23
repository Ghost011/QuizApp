import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LandingPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Material(
      color: Colors.grey,
      child: new InkWell(
        onTap: ()=> print("Now you've done it"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hola Amigo!", style: new TextStyle(fontSize: 50,
            color: Colors.white70,fontWeight: FontWeight.bold,
            ),),
            new Text("Tap here to start!",
            style: new TextStyle(fontSize: 20,
            color: Colors.black54,fontWeight: FontWeight.bold,
            ))
          ],
        ),
      ),
    );
  }
}