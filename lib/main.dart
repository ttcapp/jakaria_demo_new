import 'package:flutter/material.dart';
import 'package:jakaria_demo/my_home_page.dart';
import 'package:jakaria_demo/second_page.dart';
import 'package:jakaria_demo/third_page.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
final navigatorkey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
      home: SlideDrawer(
        offsetFromRight: 320,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF000046),
            Color(0xFF1CB5E0),
          ],
        ),
        items: [
          MenuItem('Home',
              icon: Icons.home,
              onTap: (){}),
          MenuItem('Second Page',
              icon: Icons.account_box,
              onTap: (){
              navigatorkey.currentState!.push(MaterialPageRoute(builder: (context)=>SecondPage()));
              }),
          MenuItem('Third Page',
              icon: Icons.light,
              onTap: (){
              navigatorkey.currentState!.push(MaterialPageRoute(builder: (context)=>ThirdPage()));
              }),
          MenuItem('Fourth Page',
              icon: Icons.mode,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.settings,
              onTap: (){}),
        ],
        child: MyHomePage(),
      ),
    );
  }
}

