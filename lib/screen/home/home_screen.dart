import 'package:Fluttery/screen/flutter_screen.dart';
import 'package:Fluttery/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edu Hack'),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: RaisedButton(
          child: Text("Context"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder:(context)=>FlutterScreen(),
            ));
          },
        ),
      ),
    );
  }
}