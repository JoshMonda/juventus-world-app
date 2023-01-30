import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2hf1YlbFN80tfoEusSSkHITN3rG8KHpA",
            authDomain: "juventus-27272.firebaseapp.com",
            projectId: "juventus-27272",
            storageBucket: "juventus-27272.appspot.com",
            messagingSenderId: "87407553218",
            appId: "1:87407553218:web:f9ae341ae7bdd2d6b2295b",
            measurementId: "G-7SFRJHEEGM"));
  } else {
    await Firebase.initializeApp();
  }
}
