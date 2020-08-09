import 'package:flutter/material.dart';
import 'file:///E:/MyFlutter/flutter_app/lib/jumalogistic/MyLinkMan.dart';

///微信界面
class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

///AutomaticKeepAliveClientMixin，Flutter切换tab后保留tab状态。
///Flutter中为了节约内存不会保存widget的状态,widget都是临时变量。当我们使用TabBar,TabBarView是我们就会发现,切换tab，initState又会被调用一次。
///添加AutomaticKeepAliveClientMixin，并设置为true,这样就能一直保持当前不被initState了。
class _MessageScreenState extends State<MessageScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(title: Text("微信")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MaterialButton(   ///设置button，及其圆角设置
                  height: 50,
                  minWidth: 150,
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  textColor: Colors.deepPurple,
                  child: new Text("我是button"),
                  onPressed: () {
                    jumpAnother();
                  })
            ],
          ),
        ));
  }

  void jumpAnother() {
    Navigator.push(context, new  MaterialPageRoute(builder: (context) => new MyLinkMan()));
  }
}
//class MessageScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('消息'),
//      ),
//    );
//  }
//}
