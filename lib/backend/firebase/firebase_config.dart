import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCzhGncb16YH7hb2zcydeR01P-2_li_JTU",
            authDomain: "todo-cgquc6.firebaseapp.com",
            projectId: "todo-cgquc6",
            storageBucket: "todo-cgquc6.appspot.com",
            messagingSenderId: "595194018050",
            appId: "1:595194018050:web:3c6f6799e2085ceaa6ea1b"));
  } else {
    await Firebase.initializeApp();
  }
}
