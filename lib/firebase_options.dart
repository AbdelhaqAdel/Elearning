// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBEK2jYPmstsBB86uKmXdAMrybHCZ7U1g8',
    appId: '1:272989202295:web:8d7963888015c8041ba372',
    messagingSenderId: '272989202295',
    projectId: 'elearning-74200',
    authDomain: 'elearning-74200.firebaseapp.com',
    storageBucket: 'elearning-74200.firebasestorage.app',
    measurementId: 'G-0SVGXRH2QJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCh52R4B9lkhYJmrD9nr1ozwCCWRW9mNOE',
    appId: '1:272989202295:android:3addbad7e1d63fad1ba372',
    messagingSenderId: '272989202295',
    projectId: 'elearning-74200',
    storageBucket: 'elearning-74200.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByYMKWurC1vzotBjpCsEkKWrqocZCCtjg',
    appId: '1:272989202295:ios:03f449fb119d2b6e1ba372',
    messagingSenderId: '272989202295',
    projectId: 'elearning-74200',
    storageBucket: 'elearning-74200.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByYMKWurC1vzotBjpCsEkKWrqocZCCtjg',
    appId: '1:272989202295:ios:03f449fb119d2b6e1ba372',
    messagingSenderId: '272989202295',
    projectId: 'elearning-74200',
    storageBucket: 'elearning-74200.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication3',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBEK2jYPmstsBB86uKmXdAMrybHCZ7U1g8',
    appId: '1:272989202295:web:c6d5068e6a0c559b1ba372',
    messagingSenderId: '272989202295',
    projectId: 'elearning-74200',
    authDomain: 'elearning-74200.firebaseapp.com',
    storageBucket: 'elearning-74200.firebasestorage.app',
    measurementId: 'G-DYYWK4E9PN',
  );
}
