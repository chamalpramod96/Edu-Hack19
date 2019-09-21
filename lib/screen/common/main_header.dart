import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final String title;

  MainHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 240.0,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                )),
          ),
          background: Container(
            decoration:BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i1.wp.com/media.premiumtimesng.com/wp-content/files/sites/2/2016/09/Children-Digital-Age.jpg')
              )
            ),
            // color: Colors.blue,
          )),
    );
  }
}
