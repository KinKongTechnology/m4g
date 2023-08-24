import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBysCnDxsaL5GA6cQvdo67jgbeKhuH88fE",
            authDomain: "mudunm4g.firebaseapp.com",
            projectId: "mudunm4g",
            storageBucket: "mudunm4g.appspot.com",
            messagingSenderId: "311022399418",
            appId: "1:311022399418:web:7392610e814b8425ddb783"));
  } else {
    await Firebase.initializeApp();
  }
}
