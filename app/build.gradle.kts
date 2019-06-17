plugins {
    id("com.android.application")
}

android {
    signingConfigs {
        create("internalConfig") {
            keyAlias = System.getProperty("MOBILECENTER_KEY_ALIAS")
            keyPassword = System.getProperty("MOBILECENTER_KEY_PASSWORD")
            storeFile = rootProject.file("app/testapp.jks")
            storePassword = System.getProperty("MOBILECENTER_KEYSTORE_PASSWORD")
        }
    }
    compileSdkVersion(28)
    defaultConfig {
        applicationId = "de.bowstreet.testandroidapp"
        minSdkVersion(16)
        targetSdkVersion(28)
        versionCode = System.getProperty("MOBILECENTER_BUILD_VERSION", "1").toInt()
        versionName = "1.0"
        testInstrumentationRunner = "android.support.test.runner.AndroidJUnitRunner"
    }
    buildTypes {
        getByName("release") {
            isMinifyEnabled = true
            proguardFiles(getDefaultProguardFile("proguard-android.txt"), "proguard-rules.pro")
        }
    }

    flavorDimensions("release")

    productFlavors {
         create("live") {
             setDimension("release")
         }
         create("internal") {
             setDimension("release")
             signingConfig = signingConfigs.getByName("internalConfig")
         }
    }
}

dependencies {

    implementation("com.android.support:appcompat-v7:28.0.0")
    implementation("com.android.support.constraint:constraint-layout:1.1.3")
    implementation("com.android.support.constraint:constraint-layout-solver:1.1.3")

    val appCenterSdkVersion = "2.0.0"
    implementation("com.microsoft.appcenter:appcenter-analytics:${appCenterSdkVersion}")
    implementation("com.microsoft.appcenter:appcenter-crashes:${appCenterSdkVersion}")

    testImplementation("junit:junit:4.12")
    implementation(project(":library"))
}

