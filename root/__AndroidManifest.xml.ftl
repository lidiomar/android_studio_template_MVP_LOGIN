<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <activity
            android:name="${packageName}.${moduleName}.view.${activityClass}"
            <#if isNewProject>
            android:label="@string/app_name"
            <#else>
            android:label="a"
            </#if>
            <#if hasAppBar>
            android:theme="@style/${themeNameNoActionBar}"
            <#elseif !hasApplicationTheme>
            android:theme="@style/${themeName}"
            </#if>
            <#if buildApi gte 16 && parentActivityClass != "">android:parentActivityName="${parentActivityClass}"</#if>>
            <#if parentActivityClass != "">
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${parentActivityClass}" />
            </#if>
            <@manifestMacros.commonActivityBody />
        </activity>

        <activity android:name="${packageName}.splash.view.SplashActivity"
            android:label="@string/title_${detail_name}"
            <#if hasAppBar>
            android:theme="@style/${themeNameNoActionBar}"
            <#elseif !hasApplicationTheme>
            android:theme="@style/${themeName}"
            </#if>
            <#if buildApi gte 16>android:parentActivityName="${packageName}.AActivity"</#if>>
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${packageName}.AActivity" />
        </activity>
    </application>

</manifest>
