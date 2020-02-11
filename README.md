# i高醫(iKMU)

The whole brand-new iKMU Android app, providing you with its enchantment function.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Things you need to install the software and how to install them.

#### 1. Apktool

**Windows:**

1. Download Windows [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat) (Right click, Save Link As apktool.bat)
2. Download [apktool_2.4.1.jar](https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar) 
3. Rename downloaded jar to `apktool.jar`
4. Move both files (`apktool.jar` & `apktool.bat`) to your Windows directory (Usually `C://Windows`)
5. If you do not have access to `C://Windows`, you may place the two files anywhere then add that directory to your Environment Variables System `PATH` variable.
6. Try running apktool via command prompt

**Linux:**

1. Download Linux [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool) (Right click, Save Link As apktool)
2. Download [apktool_2.4.1.jar](https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar)
3. Rename downloaded jar to `apktool.jar`
4. Move both files (`apktool.jar` & `apktool`) to `/usr/local/bin` (root needed)
5. Make sure both files are executable (`chmod +x`)
6. Try running apktool via cli

**Mac OS X:**

1. Download Mac [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/osx/apktool) (Right click, Save Link As apktool)
2. Download [apktool_2.4.1.jar](https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar)
3. Rename downloaded jar to `apktool.jar`
4. Move both files (`apktool.jar` & `apktool`) to `/usr/local/bin` (root needed)
5. Make sure both files are executable (`chmod +x`)
6. Try running apktool via cli

**Note** - Wrapper scripts are not needed, but helpful so you don’t have to type `java -jar apktool.jar` over and over.

#### 2. Android SDK

Download Android SDK from [Android Developer](https://developer.android.com/studio) pages, or you can download it by Android Studio using the SDK manager.

**apksigner**

apksigner is a command line tool to sign our built apk. You can find it in `${Andrioid_SDK}/build-tools/${version}/apksigner(.bat)`, and add `${Andrioid_SDK}/build-tools/${version}` to your Environment Variables System `PATH` variable.

**adb**

Android Debug Bridge (adb) helps us install app and debug. You can find it in `${Andrioid_SDK}/platform-tools/adb(.exe)`, and add `${Andrioid_SDK}/platform-tools` to your Environment Variables System `PATH` variable.

### Install

A step by step series of examples that tell you how to get a development env running.

1. To build our apk from the decompiled sources, run apktool to build the apk.

	```bash
	apktool b .
	```
2. To sign our apk for installing, run apksigner.

	**Windows**

	```bash
	apksigner sign --ks </path/to/your/keystore> --ks-key-alias <key-alias> --ks-pass <password> dist\iKMU_4.3.3.apk
	```

	**Linux / Mac OS**

	```bash
	apksigner sign --ks </path/to/your/keystore> --ks-key-alias <key-alias> --ks-pass <password> dist/iKMU_4.3.3.apk
	```

3. Install apk through adb.

	**Windows**

	```bash
	adb install -r dist\iKMU_4.3.3.apk
	```

	**Linux / Mac OS**

	```bash
	adb install -r dist/iKMU_4.3.3.apk
	```

4. Start i高醫(iKMU) SplashActivity.

	```bash
	adb shell am start -n tw.edu.kmu.act/tw.edu.kmu.act.SplashActivity
	```