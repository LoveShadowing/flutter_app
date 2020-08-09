import 'package:flutter/material.dart';

///个人界面
class PersionScreen extends StatefulWidget {
  @override
  _PersionScreenState createState() => _PersionScreenState();

}


///AutomaticKeepAliveClientMixin，Flutter切换tab后保留tab状态。
///Flutter中为了节约内存不会保存widget的状态,widget都是临时变量。当我们使用TabBar,TabBarView是我们就会发现,切换tab，initState又会被调用一次。
///添加AutomaticKeepAliveClientMixin，并设置为true,这样就能一直保持当前不被initState了。
class _PersionScreenState extends State<PersionScreen> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
      super.build(context);
      return  Scaffold(
        appBar: AppBar(title: Text("个人中心")),
        body: new Scrollbar(
            child: new  ListView.separated(
                itemBuilder: (context, item) {
                  return buildListData(context, titleItems[item], iconItems[item], subTitleItems[item]);
                },
                separatorBuilder: (BuildContext context, int index) => new Divider(),  // 分割线
                itemCount: iconItems.length
            )
        ),
      );
  }

  ///数据源
  ///创建title、icon、subtitle的数据源
  Widget buildListData(BuildContext context, titleItem, iconItem, subTitleItem) {
    return new ListTile(
      leading: iconItem,
      title: new Text(
        titleItem,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: new Text(
        subTitleItem,
      ),
      trailing: new Icon(Icons.keyboard_arrow_right),
      /// 创建点击事件
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: new Text(
                '对话框',
                style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              ),
              content: new Text('您选择的item内容为:$titleItem'),
            );
          },
        );
      },
    );
  }

  List<String> titleItems = <String>[
    'keyboard', 'print',
    'router', 'pages',
    'zoom_out_map', 'zoom_out',
    'youtube_searched_for', 'wifi_tethering',
    'wifi_lock', 'widgets',
    'weekend', 'web',
    '图accessible', 'ac_unit',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard), new Icon(Icons.print),
    new Icon(Icons.router), new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
    new Icon(Icons.weekend), new Icon(Icons.web),
    new Icon(Icons.accessible), new Icon(Icons.ac_unit),
  ];

  List<String> subTitleItems = <String>[
    'subTitle: keyboard', 'subTitle: print',
    'subTitle: router', 'subTitle: pages',
    'subTitle: zoom_out_map', 'subTitle: zoom_out',
    'subTitle: youtube_searched_for', 'subTitle: wifi_tethering',
    'subTitle: wifi_lock', 'subTitle: widgets',
    'subTitle: weekend', 'subTitle: web',
    'subTitle: accessible', 'subTitle: ac_unit',
  ];
}

//class PersionScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('个人中心'),
//      ),
//    );
//  }
//}