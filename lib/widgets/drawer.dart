import 'package:Fluttery/screen/chatbot_screend.dart';
import 'package:Fluttery/screen/home/flutter_screen.dart';
import 'package:Fluttery/screen/home/github/github_api_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      const url = 'https://www.fiverr.com';
      await launch(url);
    }

    return Drawer(
      elevation: 10.0,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/drawer.jpg',
                ),
                fit: BoxFit.fill)),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Center(
              child: Text(
                "Edu Hack 19",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6),
            ),
            Divider(
              color: Colors.black,
              height: 3.0,
            ),
            Padding(
              padding: EdgeInsets.all(80),
            ),
            ListTile(
              title: Text(
                'Join the Community',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FlutterScreen())),
            ),
            ListTile(
                title: Text(
                  'Start your Career',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => _launchURL()),
            ListTile(
                title: Text(
                  'Choose what you learn',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chatbot()))),
            ListTile(
                title: Text(
                  'Make your first step',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebviewScaffold(
                       appBar: AppBar(
                         title: Text("Make your first step"),
                       ),
                       url: "https://dart.dev/",
                     )))),

            ListTile(
                title: Text(
                  'Github',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Github()))),
          ],
        ),
      ),
    );
  }
}
