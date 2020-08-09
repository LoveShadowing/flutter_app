import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///向 MaterialApp 构造器传入 ThemeData,全局的Theme会影响整个app的颜色和字体样式
    return MaterialApp(
      debugShowCheckedModeBanner: false,  ///不显示右上角Debug字样
      title: 'FirstFlutterDemo',
      theme: ThemeData(
//        primarySwatch: Colors.brown,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

