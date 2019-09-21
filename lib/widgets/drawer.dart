import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Center(
            child: Text("Edu Hack 19",style: TextStyle(
              color: Colors.black,  
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),),
          ),
          Divider(
            color: Colors.black,
            height: 3.0,
          ),
        ],
      ),
    );
  }
}