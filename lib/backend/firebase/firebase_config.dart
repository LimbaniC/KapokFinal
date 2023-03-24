import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC92gu3SqPIdnFvGlw2tWtisccUHn7zg08",
            authDomain: "kapok-flutterflow.firebaseapp.com",
            projectId: "kapok-flutterflow",
            storageBucket: "kapok-flutterflow.appspot.com",
            messagingSenderId: "606795837072",
            appId: "1:606795837072:web:bfde865fbac10161b8b215",
            measurementId: "G-JNSE6T8JT2"));
  } else {
    await Firebase.initializeApp();
  }
}
