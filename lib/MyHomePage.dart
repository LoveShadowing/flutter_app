import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/ContextScreen.dart';
import 'package:flutterapp/FindScreen.dart';
import 'package:flutterapp/PersionalScreen.dart';

import 'MessageScreen.dart';

class MyHomePage extends StatefulWidget {
  ///   Dart没有public 、 protect、private的概念。私有特性通过变量或函数加_(下划线)来代表私有
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    ///级联，用两个点(..) 表示，可对同一对象执行一系列操作
    list
      ..add(MessageScreen())
      ..add(ContextScreen())
      ..add(FindScreen())
      ..add(PersionScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

          ///当设置BottomNavigationBar的数量超过3个后，底部的导航是白色
//          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.announcement,
                color: Colors.blue,
              ),
              title: Text(
                "微信",
                style: new TextStyle(
                    color: Color.fromARGB(180, 120, 130, 125), fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_contact_calendar,
                color: Colors.blue,
              ),
              title: Text(
                "通讯录",
                style: new TextStyle(
                    color: Color.fromARGB(180, 120, 130, 125), fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.yellow,
              ),
              title: Text(
                "发现",
                style: new TextStyle(
                    color: Color.fromARGB(180, 120, 130, 125), fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.deepOrangeAccent,
              ),
              title: Text("我的",
                  style: TextStyle(color: Colors.brown, fontSize: 15)),
            )
          ],
          currentIndex: _currentIndex,
          onTap: (int dex) {
            setState(() {
              _currentIndex = dex;
            });
          },
        type: BottomNavigationBarType.fixed,        ///设置模式，混合
      ),
    );
  }
}
