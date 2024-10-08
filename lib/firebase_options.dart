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
    apiKey: 'AIzaSyAIrzkXYqiigFUkdpWixf6aThmUAJ_8hco',
    appId: '1:950907173796:web:f24d584c56f31479cedf31',
    messagingSenderId: '950907173796',
    projectId: 'chat-app-b7462',
    authDomain: 'chat-app-b7462.firebaseapp.com',
    storageBucket: 'chat-app-b7462.appspot.com',
    measurementId: 'G-RJZXC6HBCD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwWGWmY_z_zcMUUQecS3R8JB4IqFfXPOg',
    appId: '1:950907173796:android:518f21f78ba84364cedf31',
    messagingSenderId: '950907173796',
    projectId: 'chat-app-b7462',
    storageBucket: 'chat-app-b7462.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAruuY6h2ERbhAO7M5H7pIZa8M8u1f3hk',
    appId: '1:950907173796:ios:e5e31e0bc1c2ba92cedf31',
    messagingSenderId: '950907173796',
    projectId: 'chat-app-b7462',
    storageBucket: 'chat-app-b7462.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDAruuY6h2ERbhAO7M5H7pIZa8M8u1f3hk',
    appId: '1:950907173796:ios:e5e31e0bc1c2ba92cedf31',
    messagingSenderId: '950907173796',
    projectId: 'chat-app-b7462',
    storageBucket: 'chat-app-b7462.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAIrzkXYqiigFUkdpWixf6aThmUAJ_8hco',
    appId: '1:950907173796:web:d89851ef37a7588fcedf31',
    messagingSenderId: '950907173796',
    projectId: 'chat-app-b7462',
    authDomain: 'chat-app-b7462.firebaseapp.com',
    storageBucket: 'chat-app-b7462.appspot.com',
    measurementId: 'G-170JPP0SNP',
  );
}
