import android.os.Build;
import android.os.Bundle;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

    private FlutterEngine  engine;

        @Override
        public void configureFlutterEngine(FlutterEngine flutterEngine){
            GeneratedPluginRegistrant.registerWith(flutterEngine);
//            LogFlutterPlugins.registerLogger(flutterEngine.getDartExecutor());
            LogFlutterPlugins.registerLogger(flutterEngine,this);
        }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            getWindow().setStatusBarColor(0);
        }
    }
}
