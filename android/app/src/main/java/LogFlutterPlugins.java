import android.app.Activity;
import android.util.Log;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

/**
*@title:  flutter中打印工具类
*@description:  flutter中打印工具类
*@date:    2020/7/7 8:44
*@auther:  LoveShadowing
*/
public class LogFlutterPlugins implements MethodChannel.MethodCallHandler{

    /**必须与flutter中的设置对应上，否则无法接收消息*/
    private static  final  String  LOG_CHANNEL_NAME = "com.gugugu.flutter.plugins/log";

//    public static void registerLogger(BinaryMessenger  messenger){
//     new MethodChannel(messenger,LOG_CHANNEL_NAME).setMethodCallHandler((methodCall, result) -> {
//         String  tag = methodCall.argument("FlutterTag");
//         String  msg = methodCall.argument("msg");
//         switch (methodCall.method){
//             case "logI":
//                 Log.i(tag,msg);
//                 break;
//             case "logE":
//                 Log.e(tag,msg);
//                 break;
//         }
//     });
//    }

    private Activity activity;

    private LogFlutterPlugins(Activity activity) {
        this.activity = activity;
    }

    public static void registerLogger(FlutterEngine registrar,Activity activitys) {
        LogFlutterPlugins instance = new LogFlutterPlugins(activitys);
        //setMethodCallHandler在此通道上接收方法调用的回调
        new MethodChannel(registrar.getDartExecutor(),LOG_CHANNEL_NAME).setMethodCallHandler(instance);
    }


    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
         String  tag = methodCall.argument("FlutterTag");
         String  msg = methodCall.argument("msg");
         switch (methodCall.method){
             case "logI":
                 Log.i(tag,msg);
                 break;
             case "logE":
                 Log.e(tag,msg);
                 break;
         }
    }
}
