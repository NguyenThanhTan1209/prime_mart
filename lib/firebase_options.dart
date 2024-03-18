// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCF9lChiYLEqiXTWXTirwdjM47Q_NJb07A',
    appId: '1:250302364522:web:a9e81f3524f5db02b20313',
    messagingSenderId: '250302364522',
    projectId: 'ecommerce-9ce5c',
    authDomain: 'ecommerce-9ce5c.firebaseapp.com',
    storageBucket: 'ecommerce-9ce5c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6V9dOyMthVe6nNDEGklj3ZHmlUBjojps',
    appId: '1:250302364522:android:41d8fda23081de7db20313',
    messagingSenderId: '250302364522',
    projectId: 'ecommerce-9ce5c',
    storageBucket: 'ecommerce-9ce5c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZgwf_lUlojK-QDKHTZapOORsIcNpLXFw',
    appId: '1:250302364522:ios:9dd1b01b64d0c150b20313',
    messagingSenderId: '250302364522',
    projectId: 'ecommerce-9ce5c',
    storageBucket: 'ecommerce-9ce5c.appspot.com',
    iosBundleId: 'com.example.primeMart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZgwf_lUlojK-QDKHTZapOORsIcNpLXFw',
    appId: '1:250302364522:ios:b6dff1c0fefb0b33b20313',
    messagingSenderId: '250302364522',
    projectId: 'ecommerce-9ce5c',
    storageBucket: 'ecommerce-9ce5c.appspot.com',
    iosBundleId: 'com.example.primeMart.RunnerTests',
  );
}