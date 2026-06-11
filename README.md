# Vyana SDK for PRANA Rings

Build apps that discover, connect to, and interface with PRANA smart rings from Seek Nirvana.

The Vyana SDK gives Flutter apps a bridge to PRANA ring capabilities such as Bluetooth discovery, connection state, device information, ring settings, charging/battery status, and health/history data exposed by the underlying ring firmware.

This repository is maintained by Seek Nirvana for apps that support PRANA version rings.

## What You Can Build

- A companion app that scans for nearby PRANA rings.
- A setup flow that connects a user to their ring.
- Ring status views for battery, charging, firmware, and connection state.
- Sync flows for supported PRANA ring health/history data.
- Device settings flows such as supported ring name changes.

## Quick Start

Add the SDK to your Flutter app:

```yaml
dependencies:
  vyana_sdk:
    git:
      url: https://github.com/SeekNirvana/vyana_sdk.git
      ref: v0.2.1
```

Then import the plugin:

```dart
import 'package:vyana_sdk/vyana_sdk.dart';
```

The Flutter package name is `vyana_sdk`. Native Android package names, native plugin class names, and method channels remain compatible with the original bridge so existing runtime behavior stays stable.

## Platform Support

- Android: supported and verified with the Vyana app debug build.
- iOS: bridge files and vendored frameworks are included; run real-device validation before production use.

## Important Notes

- This SDK is intended for PRANA version rings launched by Seek Nirvana.
- The SDK contains third-party native binaries supplied through the underlying vendor SDK. See `docs/NATIVE_ARTIFACTS.md`.
- Do not remove native artifacts, OTA components, MQTT components, or vendor dependencies without a dedicated audit and real-ring regression test.
- Health and wellness data exposed through the SDK is not a medical diagnosis.

## Documentation

- `docs/INTEGRATION.md` explains Git and local-path integration.
- `docs/NATIVE_ARTIFACTS.md` lists bundled Android and iOS native artifacts.
- `THIRD_PARTY_NOTICES.md` explains upstream notices, native artifacts, and Mulan PSL preservation.

## License

The Vyana SDK distribution is licensed under the GNU Lesser General Public License v3.0. Apps that distribute this SDK must preserve the required SDK notices and license copies, and must provide source for SDK changes as required by LGPL-3.0.

This SDK also contains upstream Yucheng-originated code and artifacts made available under the Mulan Permissive Software License v2. The English Mulan PSL v2 text is preserved in `LICENSE-MULANPSL-2.0.txt`.
