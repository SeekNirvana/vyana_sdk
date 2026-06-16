# Integration Guide

Use this SDK when building a Flutter app that needs to discover, connect to, and interface with PRANA version rings from Seek Nirvana.

## Add the SDK

Use the public GitHub repository and pin to a release tag:

```yaml
dependencies:
  vyana_sdk:
    git:
      url: https://github.com/SeekNirvana/vyana_sdk.git
      ref: v0.2.5
```

Then run:

```sh
flutter pub get
```

## Import the SDK

```dart
import 'package:vyana_sdk/vyana_sdk.dart';
```

The package name is `vyana_sdk`. The original lower-level API surface is still exported, so existing classes such as `YcProductPlugin` remain available.

## Local Development

For local SDK work, point your app at a local checkout:

```yaml
dependencies:
  vyana_sdk:
    path: ../vyana_sdk
```

Switch back to the Git dependency before release builds unless you intentionally ship from a local path.

## Native Registration

These identifiers are intentionally unchanged:

- Android package: `com.example.yc_product_plugin`
- Android plugin class: `YcProductPlugin`
- iOS plugin class: `YcProductPlugin`
- Method channel: `ycaviation.com/yc_product_plugin_method_channel`
- Event channel: `ycaviation.com/yc_product_plugin_event_channel`

Changing these values is a breaking SDK migration.

## Verification Checklist

Before shipping an app with a new SDK tag:

- `flutter pub get`
- `flutter analyze`
- `flutter test`
- `flutter build apk --debug`
- Real PRANA ring scan
- Real PRANA ring connect/disconnect
- Bluetooth off/on UI state refresh
- Ring rename with a hardware-valid name
- Charging status check
- History sync check

Add iOS real-device verification before using the SDK in an iOS production build.

## License Notices

Apps that distribute this SDK must preserve required LGPL-3.0 notices and license copies. If you modify the SDK itself, provide the modified SDK source as required by LGPL-3.0.

This SDK also preserves Yucheng-originated Mulan PSL v2 notices in `LICENSE-MULANPSL-2.0.txt` and `THIRD_PARTY_NOTICES.md`.
