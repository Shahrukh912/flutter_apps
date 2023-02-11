import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/Screens/GoogleWebpage/web_view_stack.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*
to add webview open the flutter app directory in cmd and past the command flutter pub add webview_flutter
then open the app/build.gradle of android and make changes as specifed in https://codelabs.developers.google.com/codelabs/flutter-webview#2
* */

class GoogleWebpage extends StatefulWidget {
  const GoogleWebpage({super.key});

  @override
  State<GoogleWebpage> createState() => _GoogleWebpageState();
}

class _GoogleWebpageState extends State<GoogleWebpage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://google.com'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google'),
      ),
      body:  const WebViewStack(),
    );
  }
}