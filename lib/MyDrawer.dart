import 'package:flutter/material.dart';

import 'jumalogistic/PersionalScreen.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    ///https://www.jianshu.com/p/956bb41bb524，自定义header
    Widget myHeader = DrawerHeader(
      decoration: BoxDecoration(

          ///设置顶部背景颜色或图片
//        color: Colors.red
          image: DecorationImage(
              image: AssetImage('images/head_background.png'),
              fit: BoxFit.fill)),
      padding: EdgeInsets.zero,
      ///padding置为0
      child: new Stack(
          ///层叠的Stack,布局方式类似相对布局
          ///用stack来放背景图片
          children: <Widget>[
            new Image.asset(
              'images/head_background.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            new Align(
              ///先放置位置
              alignment: FractionalOffset.bottomLeft,
              child: Container(
                height: 70.0,
                margin: EdgeInsets.only(left: 12.0, bottom: 45.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  /* 宽度只用包住子组件即可 */
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///SizedBox.fromSize({ Key key, Widget child, Size size })
                    ///使用"{}"包围的参数属于可选命名参数,调用时，需要使用paramName:value的形式指定为哪个可选参数赋值
                    SizedBox.fromSize(size: Size.fromWidth(5)),
                    new CircleAvatar(
                      ///图片
                      backgroundImage: AssetImage('images/person.png'),
                      radius: 35.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, new  MaterialPageRoute(builder: (context) => new PersionalScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // 水平方向左对齐
                          mainAxisAlignment: MainAxisAlignment.center, // 竖直方向居中
                          children: <Widget>[
                            new Text(
                              "张三",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            new Text(
                              "18785963288",
                              style: new TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );

    return Container(
      child: Drawer(
        elevation: 20,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            myHeader, // 可在这里名字了替换自定义的header
//            new ListView.builder(itemBuilder: (context, index) {
//              return new ListTile(
//                title: new Text(titleItems[index]),
//                leading: new Icon(Icons.phone_android),
//              );
//            })
            ListTile(
              /// contentPadding  设置内容左边距，默认是 16，
              /// dense  使文本更小，
              /// subtitle  副标题是标题下面较小的文本
              ///  onTap 为单击，onLongPress 为长按 ，长按的波纹效果是内置的
              ///  enabled  设置为 false，来禁止点击事件
              selected: false,

              ///如果选中列表的 item 项，那么文本和图标的颜色将成为主题的主颜色。
              title: Text('订单审核'),
              leading: Image.asset(
                ///将图像或图标添加到列表的开头。这通常是一个图标。
                'images/order_audit.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              ///设置拖尾将在列表的末尾放置一个图像。这对于指示主-细节布局特别有用。
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('订单管理'),
              leading: Image.asset(
                'images/order_manage.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('认证管理'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('订单列表'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('地址管理'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              title: Text('帮助中心'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('联系客服'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('分享聚马'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('运价查询'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('关于聚马'),
              leading: Image.asset(
                'images/certificate.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  List<String> titleItems = <String>[
    'keyboard',
    'print',
    'router',
    'pages',
    'zoom_out_map',
    'zoom_out',
    'youtube_searched_for',
    'wifi_tethering',
    'wifi_lock',
    'widgets',
    'weekend',
    'web',
  ];
}
