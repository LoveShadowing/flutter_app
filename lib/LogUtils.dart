

///日志打印工具类
class  LogUtils{
  static const String _TAG_DEF = "---gugugu_log---";
  static bool debuggable = false; //是否是debug模式,true: log v 不输出.
  static String tAG = _TAG_DEF;

  static void init({bool isDebug = false, String tag = _TAG_DEF}) {
    debuggable = isDebug;
    tAG = tag;
  }

  static void e(Object object, {String tag}) {
    _printLog(tag, '  e  ', object);
  }

  static void v(Object object, {String tag}) {
    if (debuggable) {
      _printLog(tag, '  v  ', object);
    }
  }

  static void _printLog(String tag, String stag, Object object) {
    StringBuffer sb = new StringBuffer();
    sb.write((tag == null || tag.isEmpty) ? tAG : tag);
    sb.write(stag);
    sb.write(object);
    print(sb.toString());
  }

//    LogUtils._();
//
//  //第一步：设置平台，并进行命名
//  static const _platform = const MethodChannel('com.yancy.flutter.plugins/log');
//
//  //第二步，设置相关需要传递的方法
//  //invokeMethod方法接收的参数，第一个必选参数，设置的是方法的名称；后面的参数为可选的需要传递的参数
//  static void i(String tag, String msg) {
//    _platform.invokeMethod('logI', {'tag': tag, 'msg': msg});
//  }
//
//  static void d(String tag, String msg) {
//    _platform.invokeMethod('logD', {'tag': tag, 'msg': msg});
//  }
//
//  static void v(String tag, String msg) {
//    _platform.invokeMethod('logV', {'tag': tag, 'msg': msg});
//  }
//
//  static void w(String tag, String msg) {
//    _platform.invokeMethod('logW', {'tag': tag, 'msg': msg});
//  }
//
//  static void e(String tag, String msg) {
//    _platform.invokeMethod('logE', {'tag': tag, 'msg': msg});
//  }

}

