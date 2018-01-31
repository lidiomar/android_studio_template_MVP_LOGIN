<?xml version="1.0"?>

<recipe>
    <dependency mavenUrl="sdk.fluig.com:bllProcess:beta-1.0.0" />
    <dependency mavenUrl="com.android.support:appcompat-v7:26.0.1" />
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

        <merge from="root/res/values/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <#if generateLayout>
        <#include "../common/recipe_simple.xml.ftl" />
        <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    </#if>


    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/view/${activityClass}.java" />

    <instantiate from="root/src/app_package/contract/MainContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/contract/${moduleName?capitalize}Contract.java" />

    <instantiate from="root/src/app_package/model/DataSourceInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/model/source/${moduleName?capitalize}DataSource.java" />

    <instantiate from="root/src/app_package/model/DataSourceLocal.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${moduleName}/model/source/local/${moduleName?capitalize}DataSourceLocal.java" />

    <instantiate from="root/src/app_package/model/DataSourceRemote.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${moduleName}/model/source/remote/${moduleName?capitalize}DataSourceRemote.java" />
    
    <instantiate from="root/src/app_package/presenter/Presenter.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${moduleName}/presenter/${moduleName?capitalize}Presenter.java" />

    <instantiate from="root/src/app_package/view/fragment/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}/view/fragments/${moduleName?capitalize}Fragment.java" />

    <instantiate from="root/src/app_package/SplashActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/splash/view/SplashActivity.java" />

    <instantiate from="root/res/drawable/background_splash.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/drawable/background_splash.xml" />

    <instantiate from="root/src/app_package/application/Application.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/application/ApplicationFluig.java" />

    <instantiate from="root/src/assets/fluigSDKConfiguration.json.ftl"
                   to="${escapeXmlAttribute(baseFeatureResDir!'./app/src')}/main/assets/fluigSDKConfiguration.json" />
               
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
