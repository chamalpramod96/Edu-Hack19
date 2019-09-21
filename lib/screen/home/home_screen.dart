
import 'package:Fluttery/screen/common/main_header.dart';
import 'package:Fluttery/screen/home/flutter_screen.dart';
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[MainHeader("Edu Hack 19")];
        },
         body: Container(
           decoration: BoxDecoration(
             color: Colors.orangeAccent.withOpacity(0.2)
           ),
           child: Column(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(70),
               ),
               FlatButton(
                 child: Text("Join Community"),
                 onPressed: (){
                   Navigator.push(context,MaterialPageRoute(
                     builder: (context)=>FlutterScreen()
                   ));
                 },
               ),
             ],
           ),
         ),
    ),
    drawer: NavDrawer(),
    );}
}