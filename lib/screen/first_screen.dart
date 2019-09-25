import 'package:Fluttery/screen/chatbot_screend.dart';
import 'package:Fluttery/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:190),
            ),
            Center(
              child: FlutterLogo(
              size: 160.0,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top:120),
            ),
            _startButton()
          ],
        ),
      ),
    );
  }

  Widget _startButton(){
  return ButtonTheme(
    child: FlatButton(
    child: Text("Edu Hack19"),
    color: Colors.grey.withOpacity(0.1),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>Chatbot()
      ));
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    autofocus: true,
    ),
  );
  }
}