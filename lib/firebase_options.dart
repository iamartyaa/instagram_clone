// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members, non_constant_identifier_names
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
/// 
// ...
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// // ...

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD8BJb9TSyG3ZRxhxQEfDGTaaeYzZu7V54',
    appId: '1:438408833496:web:38875f6612010bec48eaad',
    messagingSenderId: '438408833496',
    projectId: 'instagram-clone-8b41a',
    authDomain: 'instagram-clone-8b41a.firebaseapp.com',
    storageBucket: 'instagram-clone-8b41a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAxp7AbuWUGrk7an5xR_FxTX-PWDwIwZI',
    appId: '1:438408833496:android:b96b098a8a05d79d48eaad',
    messagingSenderId: '438408833496',
    projectId: 'instagram-clone-8b41a',
    storageBucket: 'instagram-clone-8b41a.appspot.com',
  );
}
