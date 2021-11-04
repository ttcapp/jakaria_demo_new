
import 'package:flutter/material.dart';
import 'package:jakaria_demo/log_in.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final navigatorKey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: logInPage(),

    );
  }
}
