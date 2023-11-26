import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDEwBaB-fZfN_3or_dSqnAySYt9EqcT0qo",
            authDomain: "trails-lost.firebaseapp.com",
            projectId: "trails-lost",
            storageBucket: "trails-lost.appspot.com",
            messagingSenderId: "1010287339907",
            appId: "1:1010287339907:web:5189d0847318f50921eeb6",
            measurementId: "G-B5LW2MPJRC"));
  } else {
    await Firebase.initializeApp();
  }
}
