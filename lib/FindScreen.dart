import 'package:flutter/material.dart';
//
/////发现界面
//class FindScreen extends StatefulWidget {
//  @override
//  _FindScreenState createState() => _FindScreenState();
//
//}
//
//
/////AutomaticKeepAliveClientMixin，Flutter切换tab后保留tab状态。
/////Flutter中为了节约内存不会保存widget的状态,widget都是临时变量。当我们使用TabBar,TabBarView是我们就会发现,切换tab，initState又会被调用一次。
/////添加AutomaticKeepAliveClientMixin，并设置为true,这样就能一直保持当前不被initState了。
//class _FindScreenState extends State<FindScreen> with AutomaticKeepAliveClientMixin{
//
//  @override
//  bool get wantKeepAlive => true;
//
//  @override
//  Widget build(BuildContext context) {
//      super.build(context);
//      return  Scaffold(
//        appBar: AppBar(title: Text("朋友圈")),
//      );
//  }
//
//}

class FindScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
      ),
    );
  }
}