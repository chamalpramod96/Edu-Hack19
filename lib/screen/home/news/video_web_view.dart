import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class VideoWebViewScreen extends StatelessWidget {
  final String id;

  VideoWebViewScreen({@required this.id});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.youtube.com/results?search_query=flutter",
      appBar: AppBar(
        title: Text("Video"),
      ),
    );
  }
}
