import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKriUA0TNI7rRbNIyUV-vWqY1Z-2ZFy0s",
            authDomain: "prise-de-rdv-acf28.firebaseapp.com",
            projectId: "prise-de-rdv-acf28",
            storageBucket: "prise-de-rdv-acf28.firebasestorage.app",
            messagingSenderId: "986170120338",
            appId: "1:986170120338:web:1eaaaeab0ae19717046e4b",
            measurementId: "G-6KFCBBBE2S"));
  } else {
    await Firebase.initializeApp();
  }
}
