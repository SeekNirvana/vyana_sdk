## 0.2.3

- Fixed Android realtime data streaming (`realTimeDataUpload`): the Flutter
  `DeviceRealTimeDataType` enum index was passed straight to the SDK's
  `appRealDataFromDevice`, which expects a `Constants.DATATYPE.Real_Upload*`
  code (1536+). Index 1 (heartRate) was therefore never interpreted as
  `Real_UploadHeart` (1537), so continuous HR never streamed during an
  activity session. Now translated (iOS already used matching raw values).

## 0.2.2

- Fixed iOS ring capability detection so ad-hoc HR/SpO2/etc. tests appear.
  `getDeviceFeature` now polls the peripheral's `supportItems` until the SDK has
  populated it (from advertisement/scan data and the post-connect handshake)
  instead of returning an all-false map on the first read. This previously broke
  capability detection — and, because the app gates one-shot measurements on
  those flags, ad-hoc tests — whenever the ring was reached via auto-reconnect
  without a fresh scan.
- `getDeviceFeature` now reports `PluginState.unavailable` (rather than a bogus
  `succeed` with every flag false) when the capability bitmap has not populated,
  letting the Flutter layer distinguish "not ready, retry" from "unsupported".

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
