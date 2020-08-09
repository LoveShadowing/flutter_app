import 'package:flutter/material.dart';
import 'package:flutterapp/LogUtils.dart';
import 'package:flutterapp/MyDrawer.dart';
import 'package:flutterapp/appbar/BackTitleAppBar.dart';

///我的联系人
class PersionalScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    LogUtils.e("createState()");
    return PersionalScreenState();
  }
}

class PersionalScreenState extends State<PersionalScreen> {

  @override
  void initState() {
    LogUtils.e("initState()");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    LogUtils.e("didChangeDependencies()");
    super.didChangeDependencies();
  }

  @override
  void setState(fn) {
    LogUtils.e("setState()");
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    LogUtils.e("build()");
    return Scaffold(
      appBar: BackTitleAppBar().backAppbar(context, "聚马物流",Colors.white),
      ///DrawerController这个组件是控制drawer的出现和消失，但是系统并没有开放打开和关闭的销毁回调方法。如果想要使用该回调则需要自定义drawer。
      ///如果没有设置AppBar的leading属性，则当使用Drawer的时候会自动显示一个IconButton来告诉用户有侧边栏（在 Android 上通常是显示为三个横的图标）。
      drawer: MyDrawer(),
    );
  }
}
