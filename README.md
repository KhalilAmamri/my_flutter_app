# MyVideoApp

A cross-platform video meeting application built with Flutter, Firebase, and Jitsi Meet.

## Features

- User authentication (Firebase Auth)
- Google Sign-In integration
- Video meetings powered by Jitsi Meet
- Firestore database for meeting data
- Responsive UI for mobile, web, and desktop
- Custom theming and reusable UI components

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- [Firebase Project](https://console.firebase.google.com/)
- [Jitsi Meet Account (optional)](https://jitsi.org/)

### Installation

1. **Clone the repository:**
   ```powershell
   git clone https://github.com/KhalilAmamri/my_flutter_app.git
   cd my_flutter_app
   ```

2. **Install dependencies:**
   ```powershell
   flutter pub get
   ```

3. **Configure Firebase:**
   - Add your `google-services.json` to `android/app/`
   - Add your `GoogleService-Info.plist` to `ios/Runner/`

4. **Run the app:**
   ```powershell
   flutter run
   ```

## Project Structure

```
lib/
  main.dart                # App entry point
  my_code/                 # Business logic (auth, Firestore, Jitsi)
  my_tools/                # Utilities (colors, helpers)
  my_ui/                   # UI screens and widgets
  assets/                  # Images and other assets
android/                   # Android platform code
ios/                       # iOS platform code
web/                       # Web platform code
windows/                   # Windows platform code
macos/                     # macOS platform code
linux/                     # Linux platform code
```

## Dependencies

- [firebase_core](https://pub.dev/packages/firebase_core)
- [firebase_auth](https://pub.dev/packages/firebase_auth)
- [cloud_firestore](https://pub.dev/packages/cloud_firestore)
- [google_sign_in](https://pub.dev/packages/google_sign_in)
- [jitsi_meet_wrapper](https://pub.dev/packages/jitsi_meet_wrapper)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements and bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Developed by [Khalil Amamri](https://github.com/KhalilAmamri).