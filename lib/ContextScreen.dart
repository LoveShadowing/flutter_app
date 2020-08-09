import 'package:flutter/material.dart';

///通讯录界面
class ContextScreen extends StatefulWidget {
  @override
  _ContextScreenState createState() => _ContextScreenState();

}


///AutomaticKeepAliveClientMixin，Flutter切换tab后保留tab状态。
///Flutter中为了节约内存不会保存widget的状态,widget都是临时变量。当我们使用TabBar,TabBarView是我们就会发现,切换tab，initState又会被调用一次。
///添加AutomaticKeepAliveClientMixin，并设置为true,这样就能一直保持当前不被initState了。
class _ContextScreenState extends State<ContextScreen> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
      super.build(context);
      return  Scaffold(
        appBar: AppBar(title: Text("通讯录")),
      );
  }
}

//class ContextScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('通讯录'),
//      ),
//    );
//  }
//}