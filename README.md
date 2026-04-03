# NearbyChat

Offline P2P messaging application with WhatsApp-like UI.

## Features
- Bluetooth/WiFi Direct mesh networking (no internet required)
- End-to-end encryption (Signal Protocol)
- WhatsApp-identical interface
- Friend requests via QR code
- Cross-platform: Android & iOS

## Architecture
- P2P Layer: BLE discovery + WiFi Direct data transfer
- Security: Ed25519 identity, X25519 key exchange, AES-256-GCM encryption
- Storage: Hive (NoSQL) + Drift (SQLite) + SecureStorage (keys)
- State: BLoC pattern with reactive streams

## Setup
```bash
flutter pub get
flutter run
```

## Build
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## Permissions
### Android
- BLUETOOTH_SCAN, BLUETOOTH_CONNECT, BLUETOOTH_ADVERTISE
- ACCESS_FINE_LOCATION, NEARBY_WIFI_DEVICES

### iOS
- NSBluetoothAlwaysUsageDescription
- NSLocalNetworkUsageDescription