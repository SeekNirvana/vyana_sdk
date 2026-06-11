# Native Artifact Inventory

This file records native artifacts preserved from the working SDK package currently used by the Vyana app.

The goal of this fork is reproducibility first. These files are copied as-is and should not be removed or replaced without a dedicated audit and real-device test pass.

## Android Artifacts

The Android Gradle file references local AAR files via `api(name: ..., ext: "aar")`, local JAR files via `api fileTree(dir: 'libs', include: ['*.jar'])`, and local SO files through `jniLibs.srcDirs = ['libs']`.

| SHA-256 | Path |
| --- | --- |
| `a314e1e01296a2e1018def4ffb06b55b4d037d6ddb12f5b4399b75e185f1490a` | `android/libs/AliAgent-release-4.2.1.aar` |
| `8b5e6661b18eb39ac11f48caaee29c54fff07213455e8c6b06a3b8bc903dcca3` | `android/libs/BmpConvert_V1.6.0_10604-release.aar` |
| `7b63de70139ae92af67e74feffedc044a383cdda31914344eb3318bf41d5de6e` | `android/libs/JL_Watch_V1.13.1_11214-release.aar` |
| `ea6d62002c5cdadc7b9b7f963d296c4212e06a70053124e59ca0b11c2fa7b7fe` | `android/libs/Msc.jar` |
| `c22cfe3bfdd35ccefaf9c2fa9c8e291525c741a7e0cfa8d39b106d6739f445c8` | `android/libs/arm64-v8a/libEcgAnaly.so` |
| `1f736878db70b7d4dad794dbe50bbbf6b5a5f5985a8ad0211ccd87d24aa17570` | `android/libs/arm64-v8a/libmsc.so` |
| `1d30f6acf53986c77a964d3374419e54db10f4efdcadd8e9cb711eeafc6342fe` | `android/libs/armeabi-v7a/libEcgAnaly.so` |
| `990ed11b03572e564f8037d0bdc97a3d3c8e1cf4d816181e3cec7fcdc434f504` | `android/libs/armeabi-v7a/libmsc.so` |
| `58680d0191641b17904ecf2d66e20a286100f91568d08c96b3efd7241e522319` | `android/libs/jl_bluetooth_connect_V1.3.2-release.aar` |
| `7b0671e4f98b39537ed1a0701fcd0aecd16c17eebc43468fa58f17af0e84ee15` | `android/libs/jl_bt_ota_V1.10.0_10932-release.aar` |
| `0cbb1d46bcfda8f6d2b7a68d805c88dc4f543a4890fc2537e9aa76d0f93857b2` | `android/libs/jl_rcsp_V0.7.2_527-release.aar` |
| `52c1192fc50fb19777072dab94234bc7c2877efad6ee05db496a7a0bcdc73bf4` | `android/libs/rtk-bbpro-core-1.6.1.jar` |
| `228cd1f4c520202b306906e559d41b41efb3ebb9db3970bc26235c9be463e92b` | `android/libs/ycbtsdk-release.aar` |

## Android Maven Dependencies

The current Gradle file also references:

- `no.nordicsemi.android:dfu:2.4.0`
- `com.google.code.gson:gson:2.8.6`
- `com.squareup.okhttp3:okhttp:4.4.0`
- `org.eclipse.paho:org.eclipse.paho.client.mqttv3:1.1.0`
- `com.lai.weavey:dialog:2.0.1`
- `org.jetbrains.kotlin:kotlin-bom:1.8.0`

These should remain pinned until the security/dependency audit decides otherwise.

## iOS Vendored Frameworks

The podspec references all local `.framework` and `.xcframework` artifacts under `ios/Frameworks`.

- `DFUnits.framework`
- `JLAudioUnitKit.framework`
- `JLDialUnit.framework`
- `JLLogHelper.xcframework`
- `JL_AdvParse.framework`
- `JL_BLEKit.xcframework`
- `JL_HashPair.framework`
- `JL_OTALib.xcframework`
- `RTKLEFoundation.framework`
- `RTKOTASDK.framework`
- `YCProductSDK.framework`
- `ZipZap.framework`

The podspec also references:

- `iOSDFULibrary`, `~> 4.13.0`

## Notes

Chinese comments and strings inside vendored framework headers or binary metadata are left untouched because those artifacts are third-party vendor deliverables. Wrapper code controlled by this package has been cleaned to English.
