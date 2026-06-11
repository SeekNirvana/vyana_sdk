## 0.2.1

- Fixed iOS Bluetooth readiness reporting so an already-connected PRANA
  peripheral is exposed to Flutter as `BluetoothState.connected`.

## 0.2.0

- Renamed the Flutter package from `yc_product_plugin` to `vyana_sdk`.
- Added `package:vyana_sdk/vyana_sdk.dart` as the recommended public import.
- Kept native Android package names, native plugin class names, and method channels unchanged for runtime compatibility.
- Updated Android Gradle local artifact lookup and iOS podspec naming for the new Flutter package name.
- Updated docs to reference the Git-backed `vyana_sdk` package.

## 0.1.0-vyana.1

- Created the Vyana-maintained internal SDK package from the working Yucheng Flutter plugin used by the Vyana app.
- Excluded the upstream example app so the Vyana app can be added as the canonical example later.
- Preserved Android AAR/JAR/SO artifacts and iOS vendored frameworks as currently referenced by the plugin build files.
- Added PRANA-focused SDK documentation, LGPL-3.0 licensing files, Vyana notice, Mulan PSL v2 preservation, and native artifact inventory.
- Included the Android scan bookkeeping fix currently used by the Vyana app.
