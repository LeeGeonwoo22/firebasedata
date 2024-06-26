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
    apiKey: 'AIzaSyCSqSMgPSKn3xX0mNgj3pgb_MvgpeKvWcw',
    appId: '1:643879054309:web:44f332f499683732fddd0c',
    messagingSenderId: '643879054309',
    projectId: 'fir-11-a4eff',
    authDomain: 'fir-11-a4eff.firebaseapp.com',
    storageBucket: 'fir-11-a4eff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCs21uGBkep2pPeWESJqpcm_dyaz5ftRjQ',
    appId: '1:643879054309:android:ef4464c61cc4ea9efddd0c',
    messagingSenderId: '643879054309',
    projectId: 'fir-11-a4eff',
    storageBucket: 'fir-11-a4eff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC1esJKdDvgO7rBj7d28DaBiFmoFcF9mM',
    appId: '1:643879054309:ios:e7dbe5f565cc8cdbfddd0c',
    messagingSenderId: '643879054309',
    projectId: 'fir-11-a4eff',
    storageBucket: 'fir-11-a4eff.appspot.com',
    iosBundleId: 'com.example.firebase123',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAC1esJKdDvgO7rBj7d28DaBiFmoFcF9mM',
    appId: '1:643879054309:ios:249b89126534b8f8fddd0c',
    messagingSenderId: '643879054309',
    projectId: 'fir-11-a4eff',
    storageBucket: 'fir-11-a4eff.appspot.com',
    iosBundleId: 'com.example.firebase123.RunnerTests',
  );
}
