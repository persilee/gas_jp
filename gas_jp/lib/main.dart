import 'package:flutter/material.dart';
import 'package:gas_jp/pages/business_page.dart';
import 'package:gas_jp/pages/home_page.dart';
import 'package:gas_jp/pages/my_page.dart';

import 'navigator/tab_navigater.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '巨鹏燃气',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(244, 67, 54, 1),
        highlightColor: Color.fromRGBO(255, 255, 255, 0.6),
        splashColor: Color.fromRGBO(244, 67, 54, 0.5),
      ),
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => HomePage(),
        'business': (BuildContext context) => BusinessPage(),
        'my': (BuildContext context) => MyPage(),
      },
      home: TabNavigator(),
    );
  }
}


