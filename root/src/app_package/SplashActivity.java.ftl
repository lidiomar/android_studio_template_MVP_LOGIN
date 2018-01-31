package ${packageName}.splash.view;

import android.app.Activity;
import android.os.Bundle;

import ${packageName}.${moduleName}.view.MainActivity;

import sdk.fluig.com.bll.core.utils.LoginUtils;

public class SplashActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        LoginUtils.startFlow(SplashActivity.this, MainActivity.class);
        finish();

    }

    @Override
    protected void onResume() {
        super.onResume();
    }

}
