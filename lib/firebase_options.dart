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
    apiKey: 'AIzaSyC7UQgwvMVUJG5F3VlAT3gUNIj5aQgEt48',
    appId: '1:317042522885:web:19a1775b9b6cb794c6156c',
    messagingSenderId: '317042522885',
    projectId: 'awademo-e4856',
    authDomain: 'awademo-e4856.firebaseapp.com',
    storageBucket: 'awademo-e4856.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8zxNGIqPj5j7Xu6kJTdts2kbMYv2Vuqk',
    appId: '1:317042522885:android:342ae46f2414d66ac6156c',
    messagingSenderId: '317042522885',
    projectId: 'awademo-e4856',
    storageBucket: 'awademo-e4856.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeLT2vxopkEKwLOcOrqszuryKmW9laFUM',
    appId: '1:317042522885:ios:1009f7b5567d05b3c6156c',
    messagingSenderId: '317042522885',
    projectId: 'awademo-e4856',
    storageBucket: 'awademo-e4856.appspot.com',
    iosBundleId: 'com.example.awademo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCeLT2vxopkEKwLOcOrqszuryKmW9laFUM',
    appId: '1:317042522885:ios:1009f7b5567d05b3c6156c',
    messagingSenderId: '317042522885',
    projectId: 'awademo-e4856',
    storageBucket: 'awademo-e4856.appspot.com',
    iosBundleId: 'com.example.awademo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC7UQgwvMVUJG5F3VlAT3gUNIj5aQgEt48',
    appId: '1:317042522885:web:311a4db90e9c6d37c6156c',
    messagingSenderId: '317042522885',
    projectId: 'awademo-e4856',
    authDomain: 'awademo-e4856.firebaseapp.com',
    storageBucket: 'awademo-e4856.appspot.com',
  );
}
