import 'package:flutter/material.dart';



///左侧返回键，中间标题的 APPBar封装
///使用 BackTitleAppBar().backAppbar(context, "聚马物流",Colors.red),
class BackTitleAppBar{

  backAppbar(BuildContext context, String title,Color  background,{VoidCallback onPressed}) {
    return PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          title: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
          leading: _leading(context,onPressed),
          brightness: Brightness.light,    ///状态栏的亮度
          backgroundColor: background,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),    ///icon的主题样式
        ));
  }

  /// 设置左侧按钮
  _leading(BuildContext context, VoidCallback onPressed) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          padding: EdgeInsets.all(0),
          child: new IconButton(
            padding: EdgeInsets.only(left: 16, right: 16),
            icon: Image.asset(
              'images/app_back.png',
              fit: BoxFit.fill,
              width: 40,
              height: 20,
            ),
//            icon: Icon(Icons.chevron_left),
            onPressed: () {
              if (onPressed == null) {
                _popThis(context);
              } else {
                onPressed();
              }
            },
          ),
        ),
      ],
    );
  }


  ///关闭页面
  _popThis(BuildContext context){
    Navigator.of(context).pop();
  }
}