import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class News extends StatefulWidget {
  @override
  _PeopleNews createState() => _PeopleNews();
}

class _PeopleNews extends State<News> {

  Completer<WebViewController> _controller =Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.wearebrain.com/blog',
      appBar: AppBar(
        title: Text('News'),
        actions: <Widget>[

        ],
      ),

    );
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.blue,
//        title: Text('News'),
//        centerTitle: true,
//        elevation: 2,
//      ),
//
//      body: WebView(
//        initialUrl: 'https://www.wearebrain.com/blog',
//        javascriptMode: JavascriptMode.unrestricted,
//        onWebViewCreated: (WebViewController controller) {
//          _controller.complete(controller);
//        }
//      ),


//    );
  }
}
