<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.INTERNET" />
    <application
        android:name="${packageName}.application.ApplicationFluig">
        <activity android:name="${packageName}.${moduleName}.view.${activityClass}"
            <#if generateActivityTitle!true>
                <#if isNewProject>
                    android:label="@string/app_name"
                <#else>
                    android:label="@string/title_${activityToLayout(activityClass)}"
                </#if>
            </#if>
        
            <#if hasNoActionBar>
                android:theme="@style/${themeNameNoActionBar}"
            <#elseif (requireTheme!false) && !hasApplicationTheme && appCompat>
                android:theme="@style/${themeName}"
            </#if>
            <#if buildApi gte 16 && parentActivityClass != "">
                android:parentActivityName="${parentActivityClass}"
            </#if>>
            <#if parentActivityClass != "">
                <meta-data android:name="android.support.PARENT_ACTIVITY"
                    android:value="${parentActivityClass}" />
            </#if>
        </activity>
        
        <activity android:name="${packageName}.splash.view.SplashActivity"
            android:screenOrientation="portrait"
            android:theme="@style/SplashTheme">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>

        <activity
            android:name="sdk.fluig.com.bll.core.login.email.view.EmailRequestActivity"
            android:screenOrientation="portrait"
            android:theme="@style/FluigLoginTheme.Light" />
        <activity
            android:name="sdk.fluig.com.bll.core.login.server.view.ServerRequestActivity"
            android:screenOrientation="portrait"
            android:theme="@style/FluigLoginTheme.Light" />
        <activity
            android:name="sdk.fluig.com.bll.core.login.password.view.PasswordRequestActivity"
            android:screenOrientation="portrait"
            android:theme="@style/FluigLoginTheme.Light" />
        <activity
            android:name="sdk.fluig.com.bll.core.login.forgot.view.ForgotPasswordActivity"
            android:screenOrientation="portrait"
            android:theme="@style/FluigLoginTheme.Light" />
        <activity
            android:name="sdk.fluig.com.bll.core.login.manual.view.ManualLoginActivity"
            android:theme="@style/FluigLoginTheme.Light"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="adjustPan" />
        <activity
            android:name="sdk.fluig.com.bll.core.login.account.view.AccountSelectActivity"
            android:screenOrientation="portrait"
            android:theme="@style/FluigLoginTheme.Light" />    
        

    </application>
</manifest>