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
    apiKey: 'AIzaSyCurw7abk9QXPsJGWKsq231LMup0V2ZP3w',
    appId: '1:1034292681661:web:d91b4ef23fb8a260e5d0d4',
    messagingSenderId: '1034292681661',
    projectId: 'sherkety-app-da5b5',
    authDomain: 'sherkety-app-da5b5.firebaseapp.com',
    storageBucket: 'sherkety-app-da5b5.firebasestorage.app',
    measurementId: 'G-27X0L0SVCC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzq-g_desz512vg2zOeiv6TxP8Awq-a9k',
    appId: '1:1034292681661:android:171d2e830c78f062e5d0d4',
    messagingSenderId: '1034292681661',
    projectId: 'sherkety-app-da5b5',
    storageBucket: 'sherkety-app-da5b5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJYC6q9AkCZb9q095ccxjpqHAPq9sqOPQ',
    appId: '1:1034292681661:ios:391c84fe2e83c811e5d0d4',
    messagingSenderId: '1034292681661',
    projectId: 'sherkety-app-da5b5',
    storageBucket: 'sherkety-app-da5b5.firebasestorage.app',
    iosBundleId: 'com.example.sherketyFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJYC6q9AkCZb9q095ccxjpqHAPq9sqOPQ',
    appId: '1:1034292681661:ios:391c84fe2e83c811e5d0d4',
    messagingSenderId: '1034292681661',
    projectId: 'sherkety-app-da5b5',
    storageBucket: 'sherkety-app-da5b5.firebasestorage.app',
    iosBundleId: 'com.example.sherketyFlutterApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCurw7abk9QXPsJGWKsq231LMup0V2ZP3w',
    appId: '1:1034292681661:web:6f6e8a1ba268b23de5d0d4',
    messagingSenderId: '1034292681661',
    projectId: 'sherkety-app-da5b5',
    authDomain: 'sherkety-app-da5b5.firebaseapp.com',
    storageBucket: 'sherkety-app-da5b5.firebasestorage.app',
    measurementId: 'G-C4G3Y5856T',
  );
}
