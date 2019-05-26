import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WebViewPageState();
  }
}

class WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    final title = AppBar(
      title: Text("FRC Teams App"),
      backgroundColor: Colors.black87,
    );
    return Scaffold(
      appBar: title,
      body: WebView(
        initialUrl: 'https://frcteamsapp.firebaseapp.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
    ;
  }
}
