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
    apiKey: 'AIzaSyBY0_g1z5zs3UcEuiWCQdlKV_RL6NgnWC8',
    appId: '1:69197686937:web:df3ddbc2c263d6b573b008',
    messagingSenderId: '69197686937',
    projectId: 'proyecto-final-2b8b7',
    authDomain: 'proyecto-final-2b8b7.firebaseapp.com',
    storageBucket: 'proyecto-final-2b8b7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbJuMnM6qyBYHa-d0rVrT-qO3jqkVpC0o',
    appId: '1:69197686937:android:6c844d5dfd1fd73773b008',
    messagingSenderId: '69197686937',
    projectId: 'proyecto-final-2b8b7',
    storageBucket: 'proyecto-final-2b8b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDESIZsy3mDPQREZbEXZQq2wQQwHPhQASc',
    appId: '1:69197686937:ios:8b2fe478c8d66d2373b008',
    messagingSenderId: '69197686937',
    projectId: 'proyecto-final-2b8b7',
    storageBucket: 'proyecto-final-2b8b7.appspot.com',
    iosBundleId: 'com.systechnology.proyectoFinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDESIZsy3mDPQREZbEXZQq2wQQwHPhQASc',
    appId: '1:69197686937:ios:181c6be25106664273b008',
    messagingSenderId: '69197686937',
    projectId: 'proyecto-final-2b8b7',
    storageBucket: 'proyecto-final-2b8b7.appspot.com',
    iosBundleId: 'com.systechnology.proyectoFinal.RunnerTests',
  );
}
